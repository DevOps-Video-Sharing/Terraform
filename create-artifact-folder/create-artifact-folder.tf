resource "google_artifact_registry_repository" "my-repo" {
  location      = var.region
  repository_id = "terraform-test-repository"
  description   = "test create repository by terraform"
  format        = "DOCKER"
}