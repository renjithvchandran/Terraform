provider "google" {
  credentials = "${file("serviceaccount.json")}"
  project     = "kube-test-245509"
  region      = "europe-west1"
}
