terraform {
  backend "gcs" {
    bucket = "prism-prod-terraform-state"
    prefix = "5line-api"
  }
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.64.0"
    }
  }
}

provider "google" {
  project = "prism-prod-372103"
}