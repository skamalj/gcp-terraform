terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google-beta"
      version = ">= 4.00.0"
    }
  }
}

resource "google_container_cluster" "gke_cluster" {
  provider = google-beta
  name               = var.cluster_name
  location           = var.region
  node_locations      = var.node_locations

// TODO: KMS module is not created yet, hence this is just a placeholder
  dynamic "database_encryption" {
    for_each = try(var.db_encrypt_key_name,null) == null ? [] : [1]
    content {
      state = "ENCRYPTED"  
      key_name = var.db_encrypt_key_name
    }
  }
  node_config {
    machine_type = "n2d-standard-2"
    disk_size_gb = 20
    service_account = var.cluster_service_account
  }

  description = var.description
  default_max_pods_per_node = var.enable_autopilot == "ENABLE" ? null : var.default_max_pods_per_node
  enable_binary_authorization = var.enable_autopilot == "ENABLE" ? null : var.enable_binary_authorization
  enable_shielded_nodes = var.enable_autopilot == "ENABLE" ? null : var.enable_shielded_nodes
  enable_autopilot =  var.enable_autopilot == "ENABLE" ? true : null

  dynamic "cluster_autoscaling" {
      for_each = var.enable_node_auto_provisioning ? [1] : []
      content {
      enabled = var.enable_node_auto_provisioning
      dynamic "resource_limits" {
        for_each = var.enable_node_auto_provisioning ? [1] : []
        content {
          resource_type = "cpu"
          minimum = var.min_cpu_limit
          maximum = var.max_cpu_limit
        }
      }
      dynamic "resource_limits" {
        for_each = var.enable_node_auto_provisioning ? [1] : []
        content {
          resource_type = "memory"
          minimum = var.min_memory_limit
          maximum = var.max_memory_limit
        }
      }
      auto_provisioning_defaults {
       service_account = var.nap_service_account
       image_type = var.nap_image_type 
      }
      autoscaling_profile = var.autoscaling_profile
  }
  }
  //Below two will be set to remove the default node pool
  initial_node_count = var.initial_node_count
  remove_default_node_pool = var.enable_autopilot == "ENABLE" ? null : var.remove_default_node_pool
  
  // Disabled due to bug in terraform where it is not allowing to use config with logging_service
  #logging_config {
  #  enable_components = var.enable_logging_components 
  #}

  master_authorized_networks_config {
    dynamic "cidr_blocks" {
      for_each = var.master_auth_cidr_block
      content {
        cidr_block = cidr_blocks.value.cidr_block
        display_name = cidr_blocks.value.name
      }
    }
  }
  network    = var.network_id
  subnetwork = var.subnet_id
  networking_mode = var.networking_mode

  logging_service = var.logging_service
  monitoring_service = var.monitoring_service
  
 # monitoring_config {
 #   enable_components = var.enable_monitoring_components
 # }
  dynamic "network_policy" {
    for_each = var.enable_autopilot == "ENABLE" ? [] : [1]
    content {
      enabled = var.network_policy_enabled
    }
  }
  dynamic "confidential_nodes" {
    for_each = var.enable_autopilot == "ENABLE" ? [] : [1]
    content {
      enabled = var.confidential_nodes_enabled
    }
  }
  pod_security_policy_config {
    enabled = var.pod_security_policy_config_enabled
  }
  dynamic "authenticator_groups_config" {
    for_each = try(var.auth_security_group,null) == null ? [] : [1]
    content {
      security_group = var.auth_security_group   
    } 
  }
  private_cluster_config {
    enable_private_nodes = var.enable_private_nodes
    enable_private_endpoint = var.enable_private_nodes ? var.enable_private_endpoint : null
    master_ipv4_cidr_block = var.master_cidr_block
    master_global_access_config {
        enabled = var.master_global_access_config_enabled
    }
  }
  release_channel {
    channel = var.release_channel
  }
  enable_l4_ilb_subsetting = var.enable_l4_ilb_subsetting
  default_snat_status {
    disabled = var.default_snat_disabled
  }
  dynamic "workload_identity_config" {
    for_each = var.enable_autopilot == "ENABLE" ? [] : [1]
    content {
      workload_pool =  "${var.project_id}.svc.id.goog"
    }
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  addons_config {
    dynamic "network_policy_config" {
      for_each = var.enable_autopilot == "ENABLE" ? [] : [1]
      content {
        disabled = var.network_policy_disabled
      }
    }
    dynamic "gcp_filestore_csi_driver_config" {
      for_each = var.enable_autopilot == "ENABLE" ? [] : [1]
      content {
        enabled = var.gcp_filestore_csi_driver_config_enabled
      }
    }
    gce_persistent_disk_csi_driver_config {
      enabled = var.gcp_persistent_disk_csi_driver_config_enabled
    }
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = var.pod_range_name
    services_secondary_range_name = var.service_range_name
  }
  lifecycle {
    ignore_changes = [
      node_config
    ]  
  }
  }

