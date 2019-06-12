provider "google" {
  project = "phrasal-insight-237905"
  region  = "asia-south1"
  credentials = "${file("./creds/serviceaccount.json")}"
  }
