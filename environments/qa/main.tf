

module "resource" {
      source = "../../modules/azurerm_resource_group"
      resource_group_name = var.rg_name
      resource_group_location = var.rg_location
}


module "storage" {
    depends_on = [ module.resource ]
    source = "../../modules/azurerm_storage_account"
  storage_account_name = var.sa_name
  resource_group_name = var.rg_name
  resource_group_location = var.rg_location

}


