resource "google_artifact_registry_repository"  "frontend-repo" {
  location      = var.region
  repository_id = "frontend"
  description   = "frontend repository created by terraform"
  format        = "DOCKER"
}
resource "google_artifact_registry_repository"  "backend-repo" {
  location      = var.region
  repository_id = "backend"
  description   = "backend repository created by terraform"
  format        = "DOCKER"
}

