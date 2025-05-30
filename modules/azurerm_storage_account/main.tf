


resource "azurerm_storage_account" "rg1-storage" {
  name                     = var.sa_name
  resource_group_name      = var.rg_name
  location                 = var.rg_location
  account_tier             = var.acc_tier
  account_replication_type = var.acc_rep_type
}