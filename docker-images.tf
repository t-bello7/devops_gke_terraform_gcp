resource "docker_image" "personal-blog" {
    name = "personal-blog"
    build {
        context = "./p-blog"
        tag = ["gcr.io/${var.gcp_project_id}/personal-blog"]
#        tag = ["frontend-socks:latest"]
        label = {
            author: "tbello"
        }
    }
}

resource "docker_registry_image" "personal-image-registry" {
  name          = "gcr.io/altschool-23/${docker_image.personal-blog.name}"
  keep_remotely = true
}