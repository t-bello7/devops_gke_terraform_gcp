variable "gcp_credentials" {
    type = string
    description = "Location of service account credentials"
}

variable "gcp_project_id" {
    type = string
    description = " GCP Project Id"
}

variable "gcp_region" {
    type = string
    description = "GCP Region"
}

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}
