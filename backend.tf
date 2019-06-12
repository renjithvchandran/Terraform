terraform {
  backend "gcs" {
    bucket = "<your-project-id>-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
