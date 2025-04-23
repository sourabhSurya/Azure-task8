variable "name_prefix" {
  type        = string
  default     = "cmtr-dfc0edb2-mod8"
  description = "Prefix for naming resources"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "tags" {
  type = map(string)
  default = {
    Creator = "sourabh_suryawanshi@epam.com"
  }
}

variable "git_pat" {
  type        = string
  sensitive   = true
  description = "Git Personal Access Token for ACR task"
}

variable "admin_enabled" {
  description = "Enable admin access to ACR"
  type        = bool
}

variable "node_count" {
  description = "Number of nodes for AKS cluster"
  type        = number
}

variable "vm_size" {
  description = "Size of the VM for AKS cluster nodes"
  type        = string
}
