output "boundary_cluster_url" {
  value = hcp_boundary_cluster.example[0].cluster_url
}

output "vault_cluster_public_url" {
  value = hcp_vault_cluster.example[0].vault_public_endpoint_url
}

output "vault_cluster_private_url" {
  value = hcp_vault_cluster.example[0].vault_private_endpoint_url
}

output "vault_namespace" {
  value = hcp_vault_cluster.example[0].namespace
}

output "vault_admin_token" {
  value = hcp_vault_cluster_admin_token.example[0].token
  sensitive = true
}

output "name_prefix" {
  value = var.name_prefix
}