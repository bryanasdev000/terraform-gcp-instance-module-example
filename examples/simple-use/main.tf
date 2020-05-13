module "instance" {
  # Source
  source = "git::https://github.com/bryanasdev000/terraform-gcp-instance-module-example.git" # Git sem travar branch / tag / commit
  # source = "../../" # Path local
  # Referencias = https://www.terraform.io/docs/modules/sources.html

  # Parametros do modulo
  name   = "webserver"
  quantity = 2
  labels = {
      ambiente = terraform.workspace
      role = "webserver"
  }
}

# Outputs
output "vm_external_ip" {
  value       = module.instance.vm_external_ip_primary_interface
  description = "IP das VM(s) criadas"
}
