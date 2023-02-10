terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.42.0"
    }

  

    azapi = {
      source = "Azure/azapi"
      version = "1.3.0"
    }
  }
  cloud {
    organization = "terraform_snowflake"
    workspaces {
      name = "testing_space"
    }
  }
}

provider "azurerm" {
  features {}
}