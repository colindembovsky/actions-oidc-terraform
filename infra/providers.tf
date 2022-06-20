terraform {

  required_version = ">=1.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.7.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "cd-teroidc-shared"
    storage_account_name = "teroidc"
    container_name       = "tfstate"
    key                  = "dev.teroidc.tfstate"
  }
}

provider "azurerm" {
  features {}
}