terraform {
    backend "gcs" {
        bucket = "gke_terrafor_state_23"
        prefix = "terraform/state"
    }
}