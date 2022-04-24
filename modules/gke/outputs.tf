output "gke_cluster_host" {
  value       = google_container_cluster.gke_cluster.endpoint
  description = "GKE Cluster Host"
}
output "gke_cluster_id" {
  value       = google_container_cluster.gke_cluster.id
  description = "GKE Cluster Host"
}