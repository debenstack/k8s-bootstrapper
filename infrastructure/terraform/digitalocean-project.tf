resource "digitalocean_project" "k8stack-project" {
  name        = "k8stack"
  description = "debenstack Kubernetes Cluster"
  purpose     = "Production debenstack Kubernetes"
  environment = "Production"
  resources   = [digitalocean_kubernetes_cluster.bootstrapper.urn]
}