variable "client_id" {
  description = "HCP credential: ClientID"
}

variable "client_secret" {
  description = "HCP credential: ClientSecret"
}

variable "region" {
  description = "AWS Region to be used"
  default     = "us-east-2"
}

variable "hvn_enabled" {
  description = "Deploy a HVN true/false"
  default     = true
}

variable "hvn_provider" {
  description = "Cloud Provider to create the HVN"
  default     = "aws"
}

variable "hvn_cidr_block" {
  description = "CIDR Block to be used"
  default = "172.25.16.0/20"
}

variable "boundary_enabled" {
  description = "Deploy Boundary true/false"
  default     = true
}

variable "boundary_tier" {
  description = "Standard or Plus"
  default     = "standard"
}

variable "boundary_username" {
  description = "Initial Username to access Boundary"
}

variable "boundary_password" {
  description = "Initial Password to access Boundary" 
}

variable "vault_enabled" {
  description = "Deploy Vault true/false"
  default     = true
}

variable "vault_public_endpoint" {
  description = "provide a public endpoint true/false"
  default     = true
}

variable "vault_tier" {
  description = "Size of the Cluster [dev,starter_small,..,plus_large]"
  default     = "dev"
}