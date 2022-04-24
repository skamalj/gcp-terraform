variable "pool_name_prefix" {}
variable "project_id" {}
variable "cluster" {}
variable "region" {}
variable "node_locations" {
  default = null
}
variable "node_pool_labels" {
  default = null
}
variable "machine_type" {
  default = "n2d-standard-2"
}
variable "service_account" {
  default = null
}
variable "create_pod_range" {
  default = false
}
variable "pod_ipv4_cidr_block" {
  default = null
}
variable "pod_range" {
  default = null
}
variable "min_node_count" {
  default = 1
}
variable "max_node_count" {
  default = 1
}
variable "auto_repair" {
  default = true
}
variable "auto_upgrade" {
  default = true
}
variable "max_pods_per_node" {
  default = 30
}
variable "initial_node_count" {
  default = 1
}
variable "upgrade_max_surge" {
  default = 1
}
variable "upgrade_max_unavailable" {
  default = 0
}