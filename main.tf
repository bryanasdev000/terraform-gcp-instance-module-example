resource "google_compute_instance" "vm" {
  # Base
  name                      = format("%s-%s-%d", terraform.workspace, var.name, count.index)
  machine_type              = var.machine_type
  description               = var.description
  zone                      = var.zone
  count                     = var.quantity
  min_cpu_platform          = var.cpu
  enable_display            = false
  allow_stopping_for_update = true
  can_ip_forward            = false
  deletion_protection       = false

  # Filters, Billing and reporting
  labels = var.labels
  tags   = var.tags

  # Disk
  boot_disk {
    auto_delete = true
    device_name = "root"
    mode        = "READ_WRITE"
    initialize_params {
      image = var.image
      size  = var.storage_size
      type  = var.storage_type
    }
  }

  scratch_disk {
    interface = var.storage_interface
  }


  # Network
  network_interface {
    network = var.network

    access_config {
      // IP Externo
    }
  }

  # GCP Metadata (SSH Key)
  metadata = {
    ssh-keys = format("%s:%s", var.ssh_user, file(var.ssh_pub_key_file))
  }

  # Userdata
  metadata_startup_script = var.userdata

}

