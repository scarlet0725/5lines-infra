resource "google_artifact_registry_repository" "api" {
  format        = "DOCKER"
  repository_id = "fiveline-api"
  location = "asia-northeast1"
}