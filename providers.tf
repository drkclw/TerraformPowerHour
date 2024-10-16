terraform {
  required_version = ">=1.6.6"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"      
    }      
  }  

  backend "azurerm" {
     resource_group_name  = "rg-terraform-github-actions-state"
     storage_account_name = "tfghactions20241231sam"
     container_name       = "terraformpowerhour"
     key                  = "terraform.tfstate"
     use_oidc             = true
  }
}

provider "azurerm" {
  features {    
  }
  use_oidc = true
}