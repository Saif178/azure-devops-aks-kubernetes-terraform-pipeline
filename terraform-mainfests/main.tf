terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  #backend "azurerm" {
  #  resource_group_name  = "terraform-storage-rg"
  #  storage_account_name = "terraformstateazureaks"
  #  container_name       = "prodtfstate"
  #  key                  = "terraform-custom-vnet.tfstate"
  #}
}

provider "azurerm" {
  subscription_id = "8ee902d5-3a88-44bd-bb63-6aeae8728ead"
  features {

  }
}

resource "random_pet" "aksrandom" {

}