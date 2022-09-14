
terraform {

  required_providers {
    azurerm = {

      source  = "hashicorp/azurerm"
      version = "~>3.0"

    }

  }

  backend "azurerm" {
    resource_group_name  = "terraformstate-rg"
    storage_account_name = "rkterraform"
    container_name       = "rkterraform"
    key                  = "terraform.tfstate"
  }

}




provider "azurerm" {
  features {}
  client_id       = var.client_id 
  client_secret   = var.client_secret 
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id

}

