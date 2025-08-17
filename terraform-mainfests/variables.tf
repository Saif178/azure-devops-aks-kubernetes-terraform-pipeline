variable "location" {
  default     = "centralus"
  description = "Location, where all the resources will be created"
  type        = string
}

variable "resource_group_name" {
  type        = string
  description = "This variable defines the Resource Group"
  default     = "terraform-aks"
}

variable "environment" {
  type        = string
  description = "This variable defines the Environment"
  #default     = "dev2"
}

variable "ssh_public_key" {
  #default     = "C:\\Users\\Saif\\.ssh\\aks-prod-sshkeys-terraform\\aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"
}

variable "windows_admin_username" {
  type        = string
  default     = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"
}

variable "windows_admin_password" {
  type        = string
  default     = "P@ssw0rd123478"
  description = "This variable defines the Windows admin password k8s Worker nodes"
}