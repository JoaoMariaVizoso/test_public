# Specify the provider and credentials for GCP
provider "google" {
  project     = "dynamic-circle-398514"
  region      = "us-central1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-states-commons"
    prefix  = "terraform/main"
  }
}

# Create a Google Cloud Storage bucket
resource "google_storage_bucket" "example_bucket" {
  name          = "bucket-110920231244-main"
  location      = "US" 
}
