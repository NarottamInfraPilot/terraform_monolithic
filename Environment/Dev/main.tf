module "rg" {

  source = "../../Modules/azurerm_resource_group"
  rg_c     = var.rg_p
}


module "vnet" {
    depends_on = [ module.rg ]
    source = "../../Modules/azurerm_vnet"
    vnet = var.vnet

}
# module "nic" {
#     depends_on = [ module.rg, module.vnet ]
#     source = "../../Modules/azurerm_network_interface"
#     nic = var.nic
# }