data "google_client_config" "current" {}

resource "google_project_iam_binding" "cloud-default-binding" {
  role = google_project_iam_custom_role.cloud-default.id
  members = [
    "serviceAccount:${google_service_account.cloud-backup.email}"
  ]
  project = data.google_client_config.current.project
}

resource "google_project_iam_binding" "storage-repository-binding" {
  role = google_project_iam_custom_role.storage-repository.id
  members = [
    "serviceAccount:${google_service_account.cloud-backup.email}"
  ]
  project = data.google_client_config.current.project
}