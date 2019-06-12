terraform {
  backend "gcs" {
    bucket = "terraform-tfstate-new"
    credentials = "./creds/serviceaccount.json"
  }
}
