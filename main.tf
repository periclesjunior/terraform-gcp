provider "google" {
    credentials = file("credentials/secrets.json")
    project     = var.gcp_project
    region      = var.gcp_region
    zone        = var.gcp_zone
}

