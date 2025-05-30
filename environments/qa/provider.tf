terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.28.0"
    }
  }
    backend "azurerm" {
    resource_group_name = "rg-terraformstate"
    storage_account_name = "devops1108"
    container_name = "devops1108container"
    key = "qa.terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}
  subscription_id = "4087152e-6430-4c7a-9c3a-d2693d1b43ce"
}