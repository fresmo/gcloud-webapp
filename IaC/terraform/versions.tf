terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.11.0"
    }
  }
  required_version = ">= 0.13"

  backend "gcs" {
    bucket = "marco-f"
    prefix = "terraform-states"
  }
}
