provider "hcp" {
  client_id     = var.client_id
  client_secret = var.client_secret
}

resource "hcp_boundary_cluster" "example" {
  cluster_id = "boundary-cluster"
  username   = var.username
  password   = var.password
}