# variable "names" {
#   default = ["dev", "test", "prod"]
# }

# resource "azurerm_resource_group" "rg" {
#   for_each = toset(var.names)
#   name     = "rg-${each.key}"
#   location = "East US"
# }




# resource "azurerm_resource_group" "rg" {
#   for_each = {
#     dev  = "East US"
#     prod = "West US"
#   }
#   name     = "rg-${each.key}"
#   location = each.value
# }


variable "b" {
    default =  2
}
resource "azurerm_resource_group" "example" {
#   for_each = toset(var.envs)
  name     = 1<var.b
  location = "East US"
}