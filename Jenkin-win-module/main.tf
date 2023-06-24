resource "google_compute_instance" "jenkin_win" {
    name = var.name
    machine_type = var.machine
    zone = var.zone
    boot_disk {
      initialize_params {
        image = var.image
      }
    }
    network_interface {
      network = google_compute_network.vpcnetwork.name
}
}

#Network
#resource "google_compute_network" "vpc_network" {
#  name = "vpcnetwork"
#}
