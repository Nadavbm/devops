output "external_ip" {
    value = "${google_computer_instance.instaneName.network_interface.0.access_config.0.assign_nat_ip}"
}