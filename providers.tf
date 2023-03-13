provider "google" {
    credentials = "key.json"
    project = var.gcp_project_id
    region = var.gcp_region 
}

