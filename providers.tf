provider "google" {
    credentials = "key.json"
    project = var.gcp_project_id
    region = var.gcp_region 
}

provider "docker" {
    registry_auth {
        address = "gcr.io"
        config_file = pathexpand("/root/.docker/config.json")
    }
}

