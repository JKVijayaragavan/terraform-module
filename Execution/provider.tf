provider "google" {
  credentials = file("service-account.json")
  project     = "playground-s-11-ea04d715"
  region      = "us-west1"
  zone        = "us-west1-a"
}


