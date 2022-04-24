variable "project_id" {}
variable "cluster_name" {}
variable "region" {}
variable "node_locations" {
  default = null
}
variable "subnet_id" {}
variable "network_id" {}
variable "pod_range_name" {}
variable "service_range_name" {}
variable "master_cidr_block" {}
variable "cluster_service_account" {}
variable "master_auth_cidr_block" {
  default = [{
    cidr_block = "0.0.0.0/0",
    name = "Public"
  }]
}
variable "enable_autopilot" {
  default = "DISABLE"
}
variable "db_encrypt_key_name" {
  default = null
}
variable "description" {
  default = null
}
variable "default_max_pods_per_node" {
  default = 30
}
variable "initial_node_count" {
  default = 1
}
variable "remove_default_node_pool" {
  default = true
}
variable "remove_default_node_pool_name" {
  default = true
}
variable "enable_shielded_nodes" {
  default = true
}
variable "networking_mode" {
  default = "VPC_NATIVE"
}
variable "enable_binary_authorization" {
  default = true
}
variable "logging_service" {
  default = "logging.googleapis.com/kubernetes"
}
variable "monitoring_service" {
  default = "monitoring.googleapis.com/kubernetes"
}
variable "network_policy_enabled" {
  default = true
}
variable "confidential_nodes_enabled" {
  default = true
}
variable "default_snat_disabled" {
  default = false
}
variable "enable_logging_components" {
  default = ["SYSTEM_COMPONENTS","WORKLOADS"]
}
variable "enable_monitoring_components" {
  default = ["SYSTEM_COMPONENTS","WORKLOADS"]
}
variable "pod_security_policy_config_enabled" {
  default = false
}
variable "auth_security_group" {
  default = null
}
variable "enable_private_endpoint" {
  default = false
}
variable "enable_private_nodes" {
  default = true
}
variable "master_global_access_config_enabled" {
  default = true
}
variable "release_channel" {
  default = "REGULAR" //Other values are "STABLE", "REGULAR", "RAPID"
}
variable "enable_l4_ilb_subsetting" {
  default = true
}
variable "network_policy_disabled" {
  default = false
}
variable "gcp_filestore_csi_driver_config_enabled" {
  default = true
}
variable "gcp_persistent_disk_csi_driver_config_enabled" {
  default = true
}
//Node Auto Provisioning
variable "enable_node_auto_provisioning" {
  default = true
}
variable "min_cpu_limit" {
  default = "0"
}
variable "max_cpu_limit" {
  default = "8"
}
variable "min_memory_limit" {
  default = "0"
}
variable "max_memory_limit" {
  default = "32"
}
variable "nap_service_account" {
}
variable "nap_image_type" {
  default = "COS_CONTAINERD"
}
variable "autoscaling_profile" {
  default = "BALANCED"
}


