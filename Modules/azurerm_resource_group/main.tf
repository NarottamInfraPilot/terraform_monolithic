resource "azurerm_resource_group" "dev-rg" {
  for_each = var.rg_c
  name     = lookup(each.value, "name", null)
  location = each.value.location
  tags     = { Env = "dev" }

}
