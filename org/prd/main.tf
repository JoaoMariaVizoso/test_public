# Specify the provider and credentials for GCP
provider "google" {
  project     = "dynamic-circle-398514"
  region      = "us-central1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-states-pv-prd"
    prefix  = "terraform/state-prd"
  }
}


# Create a Google Cloud Storage bucket
resource "google_storage_bucket" "example_bucket" {
  name          = var.bucket_name
  location      = "US" 
}










