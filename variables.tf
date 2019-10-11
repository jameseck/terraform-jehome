variable "static_hosts_map" {
  description = "A map of all hosts - applied to edgerouter for dhcp/dns"
  type        = map
}

variable "kvm_hosts_map" {
  description = "A map of KVM domains"
  type        = map
}

variable "shared_network_subnets" {
  description = "A mapping of subnets to shared network names"
  type        = map
}

variable "edgerouter_ip" {
  description = "The ip or hostname for the Edgerouter"
  type        = string
}

variable "edgerouter_user" {
  description = "The username to SSH to the Edgerouter"
  type        = string
  default     = "ubnt"
}
