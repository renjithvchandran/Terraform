terraform {
  backend "gcs" {
    bucket      = "gke-tf-demo-tfstate"
   
  }
}
