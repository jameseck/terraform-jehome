resource "libvirt_volume" "disk" {
  for_each = var.hosts_map

  name             = each.key
  base_volume_id   = var.base_volume_id
  base_volume_pool = var.base_volume_pool
  pool             = each.value["pool"]
  size             = each.value["size"]
}

resource "libvirt_cloudinit_disk" "cloudinitdisk" {
  for_each = var.hosts_map

  name = "cloudinit_${each.key}.iso"
  pool = each.value["pool"]

  user_data      = <<EOF
#cloud-config
fqdn: ${each.key}
disable_root: 0
ssh_pwauth: true
bootcmd:
  - [ cloud-init-per, once, gpg-key-epel, rpm, "--import", "https://archive.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7" ]
yum_repos:
  epel:
    name: EPEL
    baseurl: http://download.fedoraproject.org/pub/epel/7/$basearch
    mirrorlist: https://mirrors.fedoraproject.org/mirrorlist?repo=epel-7&arch=$basearch
    enabled: true
    gpgcheck: true
repo_update: true
repo_upgrade: all
packages:
- jq
- nmap-ncat
- screen
- strace
- tcpdump
- telnet
- vim-enhanced
- wget
chpasswd:
  list: |
     root:tf
  expire: False
users:
  - name: root
    ssh-authorized-keys:
      - ${file("id_rsa.pub")}
write_files:
  - encoding: b64
    content: ${base64encode(file("${path.module}/kubeadm.sh"))}
    owner: root:root
    path: /root/kubeadm.sh
    permissions: 0755
runcmd:
- /root/kubeadm.sh
growpart:
  mode: auto
  devices: ['/']
EOF
  network_config = <<EOF
version: 1
config:
- type: physical
  name: eth0
  subnets:
    - type: dhcp
EOF
}

resource "libvirt_domain" "dom" {
  for_each = var.hosts_map

  name    = each.key
  memory  = each.value["memory"]
  vcpu    = each.value["cpu"]
  running = true

  cloudinit  = libvirt_cloudinit_disk.cloudinitdisk[each.key].id
  qemu_agent = true

  network_interface {
    mac            = upper(each.value["mac"])
    bridge         = var.bridge_network
    wait_for_lease = true
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  disk {
    volume_id = libvirt_volume.disk[each.key].id
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }

  provisioner "remote-exec" {
    connection {
      host    = self.network_interface[0].addresses[0]
      type    = "ssh"
      user    = "root"
      timeout = "15m"
    }
    inline = [
      "cloud-init status --wait > /dev/null"
    ]
  }
}