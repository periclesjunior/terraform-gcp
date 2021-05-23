resource "google_compute_instance" "default" {
    name         = "test"
    machine_type = "e2-medium"

    tags = ["allow-http"]

    metadata = {
      ssh-keys = "pjota:${file("~/.ssh/gcp_terraform.pub")}"
    }

    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-10"
      }
    }

    network_interface {
      network = "default"

      access_config {
        // Ephemeral IP
      }
    }
}

