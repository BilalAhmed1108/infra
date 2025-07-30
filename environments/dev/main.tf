

module "resourcegroup" {
  source      = "../../modules/azurerm_resource_group"
  rg_name     = var.rg_name_dev
  rg_location = var.rg_location_dev
}


module "storage" {
  depends_on   = [module.resourcegroup]
  source       = "../../modules/azurerm_storage_account"
  sa_name      = var.sa_name_dev
  rg_name      = var.rg_name_dev
  rg_location  = var.rg_location_dev
  acc_tier     = var.acc_tier_dev
  acc_rep_type = var.acc_rep_type_dev
}

module "vnet" {
  depends_on = [ module.storage ]
  source        = "../../modules/azurerm_virtual_network"
  vnet_name     = var.vnet_name_dev
  vnet_location = var.rg_location_dev
  vnet_rgname   = var.rg_name_dev
  addres_space = var.address_space_dev

}

module "subnet" {
  depends_on = [ module.vnet ]
  source           = "../../modules/azurerm_subnet"
  subnetname       = var.subnetname_dev
  rg_name          = var.rg_name_dev
  vnet_name        = var.vnet_name_dev
  address_prefixes = var.address_prefixes_dev
}


# hello
#this 
#is
#your 
#friend

