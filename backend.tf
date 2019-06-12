terraform {
  backend "gcs" {
    bucket = "phrasal-insight-237905-tfstate"
    credentials = "./creds/serviceaccount.json"
  }
}
