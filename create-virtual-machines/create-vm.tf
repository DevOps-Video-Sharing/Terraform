resource "google_compute_instance" "ubuntu_instance" {
  name         = "ubuntu-1"
  machine_type = "e2-small"
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"  # Sử dụng image Ubuntu
    }
  }

  network_interface {
    network = "default"

    access_config {
      
    }
  }

  tags = ["http-server", "https-server"]
}

resource "google_compute_firewall" "allow-http-https" {
  name    = "default-allow-http-https"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["http-server", "https-server"]
}
