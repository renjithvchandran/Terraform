provider "google" {
  credentials = "${file("./myterraform/keyfile.json")}"
  project     = "kube-test-245509"
  region      = "europe-west1"
}
