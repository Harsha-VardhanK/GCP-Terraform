provider "google" {
  credentials = file("./cert1.json")
  project     = "cert1-265507"
  region      = "us-central1"
}

resource "google_compute_instance" "terra-server" {
  name = "terraform-server"
  machine_type = "f1-micro"
  zone = "us-central1-a"


  boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
}
 network_interface {
   network = "default"
}
}
