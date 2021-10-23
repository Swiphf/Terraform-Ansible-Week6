terraform {
  backend "azurerm" {
    resource_group_name  = "rg-weighttracker-week6-prod"
    storage_account_name = "tfstate0kzsy"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
