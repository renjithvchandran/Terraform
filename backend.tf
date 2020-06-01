terraform {
  backend "gcs" {
    bucket = "cicd-project-277705-test-tfstate"
    credentials = "keyfile.json"
  }
}
