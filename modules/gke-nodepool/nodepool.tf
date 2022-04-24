terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google-beta"
      version = ">= 4.00.0"
    }
  }
}


resource "google_container_node_pool" "node_pool" {
  provider = google-beta
  name_prefix       = var.pool_name_prefix
  project =  var.project_id
  location   = var.region
  cluster    = var.cluster
  initial_node_count = var.initial_node_count

  node_config {
    labels = var.node_pool_labels
    machine_type = var.machine_type
    service_account = var.service_account
  }
  
  network_config {
    create_pod_range = var.create_pod_range
    pod_ipv4_cidr_block = var.pod_ipv4_cidr_block
    pod_range = var.pod_range
  }
  autoscaling {
     min_node_count = var.min_node_count
     max_node_count = var.max_node_count
  }

  management {
      auto_repair = var.auto_repair
      auto_upgrade = var.auto_upgrade
  }
  max_pods_per_node = var.max_pods_per_node
  node_locations = var.node_locations

  upgrade_settings {
    max_surge = var.upgrade_max_surge
    max_unavailable = var.upgrade_max_unavailable
  }
}
