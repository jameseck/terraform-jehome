resource "null_resource" "edgerouter-ansible" {

  connection {
    host = var.edgerouter_ip
    user = var.edgerouter_user
  }
  provisioner "ansible" {
    plays {
      verbose = true
      playbook {
        file_path      = "${path.module}/ansible/playbook.yml"
        roles_path     = ["${path.module}/ansible/roles"]
        force_handlers = false
      }
      hosts = ["localhost"]
      extra_vars = {
        ansible_connection = "network_cli",
        ansible_network_os = "edgeos",
        hosts_map          = jsonencode(merge(var.static_hosts_map, var.kvm_hosts_map))
      }
    }
  }
}
