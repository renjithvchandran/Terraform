resource "google_container_cluster" "gke-cluster" {
  name               = "my-kube-test"
  network            = "default"
  zone               = "europe-west1-b"
  initial_node_count = 3
}
