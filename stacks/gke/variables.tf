#Project Configuration
variable "region" {}
variable "zone" {}
variable "project_id" {}

# Network Configuration
variable "network_name" {}
variable "subnet_name" {}
variable "subnet_cidr_range" {}
variable "secondary_ranges" {  
    type = list(object({
        range_name = string
        ip_cidr_range = string
    }))
}

#GKE Cluster configuration
variable "cluster_name" {}
variable "master_cidr_block" {}
variable "master_auth_cidr_block" {  
    default = null
}
variable "enable_autopilot" {
    default = "ENABLE"
}
variable enable_private_endpoint {
    default = false
}
variable "enable_node_auto_provisioning" {
    default = false
}
variable "ilb_subnet_name" {}
variable "ilb_subnet_cidr_range" {}

variable "proxy_subnet_name" {}
variable "proxy_subnet_cidr_range" {}

