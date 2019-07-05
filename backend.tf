terraform {
  backend "gcs" {
    bucket = "kube-test-245509-tfstate"
    credentials = "keyfile.json"
  }
}
