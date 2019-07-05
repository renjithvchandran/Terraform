resource "google_container_cluster" "gke-cluster"{
  name               = "my-kube-test"
  network            = "default"
  location           = "europe-west1-b"
  initial_node_count = 2
}
