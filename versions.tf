# Configs do Terraform
terraform {
  # Versao do Terraform e Provider (GCP)
  required_version = "~> 0.13.0"
  required_providers {
    google = "~> 3.0"
  }
  # Habilita a validacao de variaveis (experimental)
  # experiments = [variable_validation]
}
