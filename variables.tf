variable "client_id" {
  description = "HCP credential: ClientID"
}

variable "client_secret" {
  description = "HCP credential: ClientSecret"
}

variable "region" {
  description = "AWS Region to be used"
  default     = "eu-west-1"
}

variable "username" {
  description = "Initial Username to access Boundary"
}

variable "password" {
  description = "Initial Password to access Boundary" 
}
