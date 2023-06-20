resource "google_compute_instance" "jenkin_win" {
    name = var.name
    machine_type = var.mechine
    zone = var.zome
    boot_disk {
      initialize_params {
        image = var.image
      }

    }
networknetwork_interface {
  Network = google_compute_network.vpc_network.name
}
}
#Network
resource "google_compute_network" "vpc_network" {
  name = "${var.name}-vpc_network"
}

