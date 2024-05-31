resource "google_service_account" "viewer_service_account" {
  account_id   = "viewer-account" 
  display_name = "Viewer Account"  
}

resource "google_project_iam_binding" "viewer_role_binding" {
  project = var.project 
  role    = "roles/viewer"  
  members = [
    "serviceAccount:${google_service_account.viewer_service_account.email}"
  ]
}

resource "google_service_account_key" "viewer_service_account_key" {
  service_account_id = google_service_account.viewer_service_account.id
}