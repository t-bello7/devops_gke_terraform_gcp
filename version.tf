terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.56.0"
    }
    docker = {
      source = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }

  required_version = ">= 0.14"
}
