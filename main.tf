provider "hcp" {
  client_id     = var.client_id
  client_secret = var.client_secret
}

resource "hcp_boundary_cluster" "example" {
  count      = var.boundary_enabled ? 1 : 0
  cluster_id = "js-boundary-cluster"
  tier       = var.boundary_tier
  username   = var.boundary_username
  password   = var.boundary_password
}

resource "hcp_hvn" "example" {
  count          = var.hvn_enabled ? 1 : 0
  hvn_id         = "main-hvn"
  cloud_provider = var.hvn_provider
  region         = var.region
  cidr_block     = var.hvn_cidr_block
}

resource "hcp_vault_cluster" "example" {
  count           = var.vault_enabled ? 1 : 0
  cluster_id      = "js-vault-cluster"
  hvn_id          = hcp_hvn.example.*.hvn_id
  public_endpoint = var.vault_public_endpoint
  tier            = var.vault_tier
}

resource "hcp_vault_cluster_admin_token" "example" {
  count      = anytrue([var.vault_enabled, var.hvn_enabled]) ? 1 : 0
  cluster_id = hcp_vault_cluster.example.cluster_id
}