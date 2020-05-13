output "vm_instance_id" {
  value       = google_compute_instance.vm[*].instance_id
  description = "Instance ID da(s) VM(s)"
}

output "vm_self_link" {
  value       = google_compute_instance.vm[*].self_link
  description = "Self link(s) das VM(s)"
}

output "vm_cpu_platform" {
  value       = google_compute_instance.vm[*].cpu_platform
  description = "CPU utilizada na(s) VM(s)"
}

output "vm_internal_ip_primary_interface" {
  value       = google_compute_instance.vm[*].network_interface.0.network_ip
  description = "IP interno da interface primaria da(s) VM(s)"
}

output "vm_external_ip_primary_interface" {
  value       = google_compute_instance.vm[*].network_interface.0.access_config.0.nat_ip
  description = "IP externo da interface primaria da(s) VM(s)"
}

output "vm_network" {
  value       = google_compute_instance.vm[*].network_interface.0.network
  description = "VPC da interface primaria da(s) VM(s)"
}

output "vm_subnetwork" {
  value       = google_compute_instance.vm[*].network_interface.0.subnetwork
  description = "Subnet da interface primaria da(s) VM(s)"
}

output "vm_zone" {
  value       = google_compute_instance.vm[*].zone
  description = "Zona da(s) VM(s)"
}

output "vm_hostname" {
  value       = google_compute_instance.vm[*].hostname
  description = "Hostname(s) da(s) VM(s)"
}

output "vm_full" {
  value       = google_compute_instance.vm[*]
  description = "JSON de resposta da API da GCP"
}
