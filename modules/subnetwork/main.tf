terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 3.88.0"
    }
  }
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = var.name
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = var.network_id
  description   = var.description
  purpose = var.purpose
  role          = var.purpose == "INTERNAL_HTTPS_LOAD_BALANCER" ? var.role : null
  private_ip_google_access = var.purpose == "INTERNAL_HTTPS_LOAD_BALANCER" ? null : var.private_ip_google_access
  dynamic "secondary_ip_range" {
    for_each = var.secondary_ranges
    content {
        range_name    = secondary_ip_range.value.range_name
        ip_cidr_range = secondary_ip_range.value.ip_cidr_range
    }
  }
  dynamic "log_config" {
    for_each = (var.purpose != "INTERNAL_HTTPS_LOAD_BALANCER") && (var.aggregation_interval != null  || 
                    var.flow_sampling != null || 
                    var.metadata != null)  ? [1] : []
    content {
      aggregation_interval = var.aggregation_interval
      flow_sampling = var.flow_sampling
      metadata =  var.metadata
    }
  }
  lifecycle {
    ignore_changes = ["secondary_ip_range"]
  }
}