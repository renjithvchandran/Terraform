resource "google_container_cluster" "gke-cluster"{
  name               = "my-kube-test_devp"
  network            = "default"
  location           = "us-central1-a"
  initial_node_count = 3
}
