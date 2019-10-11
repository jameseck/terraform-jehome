#module "vm" {
#  source = "./modules/vm"
#
#  edgerouter_ip    = "192.168.0.1"
#  edgerouter_user  = "ubnt"
#  base_volume_id   = libvirt_volume.centos-base-qcow2.id
#  base_volume_pool = "base"
#  bridge_network   = libvirt_network.bridge.bridge
#  host_map         = local.host_map
#}

locals {
  merged_hosts_map = merge(var.static_hosts_map, var.kvm_hosts_map)
}

resource "null_resource" "edgerouter-ansible" {

  connection {
    host = var.edgerouter_ip
    user = var.edgerouter_user
  }
  provisioner "ansible" {
    plays {
      verbose = true
      playbook {
        file_path      = "${path.module}/ansible/playbooks/create.yml"
        roles_path     = ["${path.module}/ansible/roles"]
        force_handlers = false
      }
      hosts = [libvirt_domain.domain_k8stesting.network_interface[0].addresses[0]]
      extra_vars = {
        ansible_connection       = "network_cli",
        ansible_network_os       = "edgeos",
        host_fqdn                = "k8stesting.je.home"
        host_ip_address          = libvirt_domain.domain_k8stesting.network_interface[0].addresses[0]
        host_mac_address         = local.host_mac_address
        host_subnet              = local.host_subnet
        host_shared_network_name = local.host_shared_network_name
      }
    }
  }
}




output "domains" {
  value = local.merged_hosts_map
}
