variable name {
  type        = string
  default     = "vm"
  description = "Nome da VM"
}

variable machine_type {
  type        = string
  default     = "n1-standard-1"
  description = "Tipo de maquina a ser utilizada"
}

variable "description" {
  type        = string
  default     = ""
  description = "Descricao da(s) VM(s)"
}

variable zone {
  type        = string
  default     = "southamerica-east1-a"
  description = "Zona da(s) VM(s)"
}

variable quantity {
  type        = number
  default     = 1
  description = "Quantidade de VMs"
}

variable "cpu" {
  type        = string
  default     = null
  description = "CPU da(s) VM(s)"
}

variable "labels" {
  type        = map(string)
  default     = {}
  description = "Label(s) da VM(s)"
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "Tag(s) da(s) VM(s)"
}

variable "image" {
  type        = string
  default     = "debian-cloud/debian-10"
  description = "Imagem da(s) VM(s)"
}

variable "storage_size" {
  type        = number
  default     = 30
  description = "Tamanho do disco da(s) VM(s)"
}

variable "storage_type" {
  type        = string
  default     = "pd-ssd"
  description = "Tipo de armazenamento da VM(s)"
  # Recurso beta
  validation {
    condition     = var.storage_type == "pd-standard" || var.storage_type == "pd-ssd"
    error_message = "O tipo de disco deve ser pd-standard (HDD) ou pd-ssd (SSD)."
  }
}

variable "storage_interface" {
  type        = string
  default     = "SCSI"
  description = "Interface de disco da(s) VM(s)"
  # Recurso beta
  validation {
    condition     = var.storage_interface == "SCSI" || var.storage_interface == "NVME"
    error_message = "A interface de disco deve ser SCSI ou NVME."
  }
}

variable "network" {
  type        = string
  default     = "default"
  description = "Nome ou self_link da rede a ser utilizada pela(s) VM(s)"
}

variable "ssh_user" {
  type        = string
  default     = "debian"
  description = "Usuario para a chave SSH"
}

variable "ssh_pub_key_file" {
  type        = string
  default     = "~/.ssh/chave_de_teste.pub"
  description = "Caminho para a chave de SSH publica"
}

variable "userdata" {
  type        = string
  default     = "echo $(date) > /root/up"
  description = "Userdata (cloudinit) da(s) VM(s)"
}
