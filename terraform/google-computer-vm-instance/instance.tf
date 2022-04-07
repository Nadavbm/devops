resource "google_computer_instance" {
    name            =   "isntaceName"
    mahcine_type    =   "n1-standard-1"
    zone            =   "us-west1-a"

    tags = ["isntanceTag"]

    // List all Centos images - gcloud computer images list --filter="name~'centos'"
    boot_disk {
        initiialize_params {
          image = "centos-cloud/centos-7"
         }
    }

    network_interface {
        netowrk = "default"
    }

    access_config {
        // Ephemeral IP
    }

    metadata {
        sshKeys = "centos:${file(var.ssh_public_key)}"
    }
}