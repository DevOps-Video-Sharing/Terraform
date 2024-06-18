resource "google_container_cluster" "autopilot_create_cluster" {
  name     = "autopilot-cluster-2"
  location = var.region
  enable_autopilot = true
  initial_node_count = 1
  # # remove_default_node_pool = true
  # node_config {
  #   disk_size_gb = 50
  # }
  # Update deletion_protection to false
  deletion_protection = false

}