resource "google_compute_instance" "vm" {
    count        = var.gcp_vm_count
    name         = format("${var.gcp_vm_name}-%03d", count.index+1)
    machine_type = var.gcp_vm_type

    tags = ["allow-http", "allow-https"]

    metadata = {
      ssh-keys = "pjota:${file("~/.ssh/gcp_terraform.pub")}"
    }

    boot_disk {
      initialize_params {
        image = var.gcp_vm_image
      }
    }

    network_interface {
      //network = "default"
      network = var.gcp_vm_network

      access_config {
        // Ephemeral IP
      }
    }
}
