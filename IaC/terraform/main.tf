resource "google_container_cluster" "primary" {
  name                     = "${var.k8s_cluster_name}-${var.environment}"
  location                 = var.region
  initial_node_count       = 1
  remove_default_node_pool = true
  node_config {
    machine_type = var.k8s_node_machine_type
    disk_size_gb = 10
    disk_type    = "pd-standard"
  }
  deletion_protection = false
}

resource "google_container_node_pool" "primary_nodes" {
  cluster    = google_container_cluster.primary.name
  node_count = 1
  node_config {
    machine_type = var.k8s_node_machine_type
    disk_size_gb = 20
    disk_type    = "pd-standard"
  }
}