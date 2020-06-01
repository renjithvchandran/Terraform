resource "google_container_cluster" "gke-cluster"{
  name               = "my-kube-test-dev"
  network            = "default"
  location           = "us-central1-a"
  initial_node_count = 3
}
