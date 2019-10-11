locals {
  name = "centos"
}

resource "libvirt_network" "bridge" {
  name      = "host-bridge"
  mode      = "bridge"
  bridge    = "br0"
  autostart = true
}

resource "libvirt_volume" "centos-base-qcow2" {
  name   = "${local.name}-qcow2"
  pool   = "base"
  source = "https://cloud.centos.org/centos/7/images/CentOS-7-x86_64-GenericCloud-1907.qcow2c"
  format = "qcow2"
}
