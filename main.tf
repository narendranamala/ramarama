## Provider block of code
provider "azurerm" {
 
   version = "~>2.0"

    subscription_id="a950aa78-fa10-47b8-aab1-98ce8df7ca78"
    tenant_id="647e5e2c-387b-4d6e-a978-ce485bf533a4"
    client_id="6874f6d1-abb4-408d-9192-74bd62859800"
  features {
  }
}

        #key                       #name  
## Resource group creation

resource "azurerm_resource_group" "R1" {
  name     = var.rgname
  location = var.location
}

## Vnet creation

resource "azurerm_virtual_network" "name" {
  name = var.vnet_name
  address_space = var.address_space
  resource_group_name= azurerm_resource_group.R1.name
  location = azurerm_resource_group.R1.location
  
}