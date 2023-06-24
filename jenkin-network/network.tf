#Network

resource "google_compute_network" "vpc_network" {
  name = "vpc1"

}

resource "google_compute_subnetwork" "subnet1" {
  name = "subnet1"
  ip_cidr_range = "10.0.1.0/24"
  region = "us-west1"
  network = "vpc1"
  
}

resource "google_compute_firewall" "firewall1" {
  name = "firewall1"
  network = "vpc1"
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  source_tags = ["web"]
  
}
