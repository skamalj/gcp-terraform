terraform {
  required_version = "1.1.7"
  backend "gcs" {
    bucket = "terraform-state-skamalj"
    prefix = "stack/gke"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version =  ">= 4.00.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version =  "4.17.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
provider "google-beta" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

module "gke_network" {
  source = "../../modules/vpc"
  name = var.network_name
}

module "gke_subnet" {
  source = "../../modules/subnetwork"
  name = var.subnet_name
  ip_cidr_range = var.subnet_cidr_range
  region = var.region
  network_id = module.gke_network.network_id
  secondary_ranges = var.secondary_ranges
}

module "gke_ilb_subnet" {
  source = "../../modules/subnetwork"
  name = var.ilb_subnet_name
  ip_cidr_range = var.ilb_subnet_cidr_range
  region = var.region
  network_id = module.gke_network.network_id
}

module "gke_proxy_subnet" {
  source = "../../modules/subnetwork"
  name = var.proxy_subnet_name
  ip_cidr_range = var.proxy_subnet_cidr_range
  region = var.region
  network_id = module.gke_network.network_id
  purpose = "INTERNAL_HTTPS_LOAD_BALANCER"
}

module "gke_serviceaccount" {
  source = "../../modules/service_account"
  project_id = var.project_id
  service_account_name = "gke-service-account"
  display_name = "Gke Service Account"
  roles = ["roles/monitoring.metricWriter","roles/monitoring.viewer","roles/logging.logWriter"]
}

module "gke_cluster" {
  providers = {
    google-beta = google-beta 
   }
  source = "../../modules/gke"
  cluster_name = "gke-autopilot"
  project_id = var.project_id
  region = var.region
  cluster_service_account = module.gke_serviceaccount.service_account.email
  subnet_id = module.gke_subnet.subnet.id
  network_id = module.gke_network.network_id
  pod_range_name = "pod-ips"
  service_range_name = "service-ips"
  master_cidr_block = var.master_cidr_block
  enable_autopilot = var.enable_autopilot
  enable_private_endpoint = var.enable_private_endpoint
  nap_service_account = module.gke_serviceaccount.service_account.email
  enable_node_auto_provisioning = var.enable_node_auto_provisioning
}

module "gke_router" {
  source = "../../modules/cloud_router"
  name = "gke-private-router"
  network_id = module.gke_network.network_id
}

module "gke_nat" {
  source = "../../modules/cloud_nat"
  name = "gke-private-nat"
  router_name = module.gke_router.router.name
}

module "gke-pool-1" {
  count = var.enable_autopilot == "ENABLE" ? 0 : 1
  providers = {
    google-beta = google-beta 
  }
  source = "../../modules/gke-nodepool"
  pool_name_prefix = "gke-pool-1-"
  project_id = var.project_id
  region = var.region
  node_locations = ["us-central1-a"]
  cluster = module.gke_cluster.gke_cluster_id
  service_account = module.gke_serviceaccount.service_account.email
  pod_ipv4_cidr_block = "10.5.0.0/16"
  pod_range = "pool-1-pod-ips"
  create_pod_range = true
  node_pool_labels = {
      "pool-name" = "gke-pool-1", 
      "app" = "nginx"
    }
}

module "gke-pool-2" {
  count = var.enable_autopilot == "ENABLE" ? 0 : 1
  providers = {
    google-beta = google-beta 
  }
  source = "../../modules/gke-nodepool"
  pool_name_prefix = "gke-pool-2-"
  project_id = var.project_id
  region = var.region
  node_locations = ["us-central1-b"]
  cluster = module.gke_cluster.gke_cluster_id
  service_account = module.gke_serviceaccount.service_account.email
  pod_ipv4_cidr_block = "10.6.0.0/16"
  pod_range = "pool-2-pod-ips"
  create_pod_range = true
  node_pool_labels = {
      "pool-name" = "gke-pool-2", 
      "app" = "ubuntu"
    }
}