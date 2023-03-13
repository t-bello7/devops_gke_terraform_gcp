output "region" {
    value = var.gcp_region
    description = "Google Cloud Region"
}

output "project_id" {
    value = var.gcp_project_id
    description = "Google Cloud Project Id"
}

output "kubernete_cluster_name" {
    value = google_container_cluster.primary.name
    description = "GKE Cluster Name"
}

output "kubernete_cluster_host" {
    value = google_container_cluster.primary.endpoint
    description = "GKE Cluster Host"
}