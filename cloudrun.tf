resource "google_cloud_run_service" "fiveline_api" {
  name     = "fiveline-api"
  location = "asia-northeast1"

  template {
    spec {
      containers {
        image = "gcr.io/cloudrun/container/hello"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }

  //noinspection HILUnresolvedReference
  lifecycle {
    ignore_changes = [
      template[0].spec[0].containers[0].image
    ]
  }
}