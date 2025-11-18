resource "azurerm_linux_virtual_machine" "vm" {
  for_each            = var.vms
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  size                = each.value.size
  admin_username      = each.value.admin_username
  network_interface_ids = [
    each.value.network_interface_id
  ]
  admin_password                  = each.value.admin_password
  disable_password_authentication = false
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
