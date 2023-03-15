#resource "google_container_registry" "docker-registry" {
 #   project = var.gcp_project_id
  #  location = "US"
#}

resource "docker_image" "frontend-socks" {
    name = "frontend-socks"
    build {
        context = "./front-end-master"
        tag = ["gcr.io/${var.gcp_project_id}/frontend-socks"]
#        tag = ["frontend-socks:latest"]
        label = {
            author: "tbello"
        }
    }
}

resource "docker_registry_image" "helloworld" {
  name          = "gcr.io/altschool-23/${docker_image.frontend-socks.name}"
  keep_remotely = true
}
# sudo docker login -u _json_key --password-stdin https://gcr.io < key.json