# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  client_id       = "87a5e202-0e36-4a5c-b468-91e47a578c73"
  client_secret   = var.client_secret
  tenant_id       = "8bfaaf36-fc91-448c-9c08-ffa6cd02e9b6"
  subscription_id = "09d974ca-6597-4f2c-98fa-9961610fbc7c"

}

