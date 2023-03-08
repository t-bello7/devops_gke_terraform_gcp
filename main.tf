provider "google" {
    credential = file("key.json")
    project="Altschool-23"
    region = "us-west1"
}

