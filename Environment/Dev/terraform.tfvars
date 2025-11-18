rg_p = {
  rg1 = {
    name     = "dev-resource-group-1"
    location = "East US"
  }
  rg2 = {
    name     = "dev-resource-group-2"
    location = "East US"
  }
}

vnet = {
  vnet1 = {
    name                = "dev-vnet-1"
    location            = "East US"
    resource_group_name = "dev-resource-group-1"
    address_space       = ["10.0.0.0/16"]
    subnet = {
      subnet1 = {
        name           = "dev-subnet-1"
        address_prefixes = "10.0.1.0/24"

      }
      subnet2 = {
        name           = "dev-subnet-2"
        address_prefixes = "10.0.2.0/24"
      }
    }
  }
}
