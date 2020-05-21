provider "google" {
  credentials = "${file("keyfile.json")}"
  project     = "cicd-project-277705"
  region      = "us-central1-a"
}
