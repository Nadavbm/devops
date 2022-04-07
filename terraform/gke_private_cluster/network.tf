resource "google_compute_network" "network" {
    name = "my_priavte_network"
    project = "project_name"
    auto_create_subnetworks = false
    routing_more = "GLOBAL" 
}

resource "google_compute_network" "subnet" {
    name = "node-network"
    project = "my_project_id"
    network = "my_private_network"
    region = "europe-west1"
    ip_cidr_range = "10.128.0.0/20"

    private_ip_google_accesss = true

    secondary_ip_range {
        range_name = "pods-network"
        ip_cidr_range = 
    }

        secondary_ip_range {
        range_name = "services-network"
        ip_cidr_range = 
    }
}


