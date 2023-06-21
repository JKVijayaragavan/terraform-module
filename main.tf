resource "google_compute_instance" "jenkin-win" {
  name           = var.name
  machine_type   = var.machine
  zone           = var.zone
  tags           = var.tags
  can_ip_forward = true
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = var.network
  }
}

