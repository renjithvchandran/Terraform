terraform {
  backend "gcs" {
    bucket = "cicd-project-277705-tfstate"
    credentials = "keyfile.json"
  }
}
