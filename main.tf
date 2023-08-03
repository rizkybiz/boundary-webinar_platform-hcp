provider "hcp" {
  client_id     = var.client_id
  client_secret = var.client_secret
}

resource "hcp_boundary_cluster" "example" {
  cluster_id = "js-boundary-cluster"
  tier       = var.boundary_tier
  username   = var.username
  password   = var.password
}

resource "hcp_hvn" "example" {
  hvn_id         = "main-hvn"
  cloud_provider = "aws"
  region         = var.region
  cidr_block     = "172.25.16.0/20"
}

