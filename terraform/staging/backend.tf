terraform {
  backend "azurerm" {
    resource_group_name  = "rg-weighttracker-week6-stage"
    storage_account_name = "tfstatepy7ym"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
