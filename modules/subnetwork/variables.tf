variable "name" {
    type = string
}
variable "ip_cidr_range" {
    type = string
}
variable "region" {
    type = string
    default = null
}
variable "network_id" {
  type = string
}
variable "description" {
  type = string
  default = null
}
variable "purpose" {
  type = string
  default = null
}
variable "role" {
    type = string
    default = "ACTIVE"  # Allowed values are ACTIVE or BACKUP
}
variable "secondary_ranges" {
    type = list(object({
        range_name = string
        ip_cidr_range = string
    }))
    default = []
}
variable "aggregation_interval" {
    type = string
    default = "INTERVAL_5_SEC"
}
variable "flow_sampling" {
  type = number
  default = 0.5
}
variable "metadata" {
  type = string
  default = "INCLUDE_ALL_METADATA" 
}

variable "private_ip_google_access" {
  type = bool
  default = true
}
