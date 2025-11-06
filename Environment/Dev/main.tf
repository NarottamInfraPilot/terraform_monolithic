# module "rg" {

#   source = "../../Modules/azurerm_resource_group"
#   rg     = var.rg
# }


# module "vnet" {
#     depends_on = [ module.rg ]
#     source = "../../Modules/azurerm_vnet"
#     vnet = var.vnet

# }