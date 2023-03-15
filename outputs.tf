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

output "kubernete_cluster_zone" {
    value = google_container_cluster.primary.zone
    description = "GKE Cluster Zone"
}


output "kubernete_cluster_host" {
    value = google_container_cluster.primary.endpoint
    description = "GKE Cluster Host"
}

output "artifarts_registry_hostname" {
    value = google_container_registry.docker-registry.id
   description = "Docker Registry id"
}

output "frontend_docker_id" {
    value = docker_image.frontend-socks.name
    description = "ID of frontend socks Docker name"
}

