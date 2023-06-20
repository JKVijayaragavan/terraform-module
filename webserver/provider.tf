provider "google" {
  credentials = file("service-account.json")
  project     = "playground-s-11-0933bb75"
  region      = "us-west1"
  zone        = "us-west1-a"
}

#data "template_file" "win_javascript" {
#  template = file("${path.}/win_javastartup_dev.ps1")
#}

#resource "google_compute_instance" "jenkin" {
#  name         = "jenkin-instance-slv1"
#  machine_type = "n1-standard-1"
#  boot_disk {
#    initialize_params {
#      image = "windows-cloud/windows-2012-r2"
#    }
#    scratch_disk {
#    interface = "SCSI"
#  }
#  network_interface {
#    network = "default"
#  }
#}

#}
 # metadata = {
 #   windows-startup-script-ps1 = data.template_file.win-javascript.rendered
 # }
