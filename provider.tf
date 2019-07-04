provider "google" {
  credentials = "${file("keyfile.json")}"
  project     = "kube-test-245509"
  region      = "europe-west1"
}
