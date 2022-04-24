terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.00.0"
    }
  }
}

resource "google_compute_network" "gke_private_net" {
  name                    = var.name
  description             = var.description
  auto_create_subnetworks = var.auto_create_subnetworks
}


