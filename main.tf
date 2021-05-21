provider "google" {
    credentials = file("credentials/secrets.json")
    project     = "gcp-terraform-314419"
    region      = "southamerica-east1"
    zone        = "southamerica-east1-b"

}

