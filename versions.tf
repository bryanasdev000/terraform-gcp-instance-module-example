# Configs do Terraform
terraform {
  # Versao do Terraform e Provider (GCP)
  required_version = "~> 0.12.0"
  required_providers {
    google = "~> 2.12"
  }
  # Habilita a validacao de variaveis (experimental)
  experiments = [variable_validation]
}