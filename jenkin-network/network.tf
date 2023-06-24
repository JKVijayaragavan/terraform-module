#Network

resource "google_compute_network" "vpcnetwork" {
  name = var.vpcname

}

resource "google_compute_subnetwork" "subnet1" {
  name = var.sunbetname
  ip_cidr_range = "10.0.1.0/24"
  region = "us-west1"
  network = google_compute_network.vpcnetwork.id
  
}

resource "google_compute_firewall" "firewall1" {
  name = var.firewallname
  network = google_compute_network.vpcnetwork.id
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "tcp"
    ports = ["80"]
  }
  source_tags = ["web"]
  
}
