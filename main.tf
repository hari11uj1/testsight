resource "azurerm_resource_group" "new_resource101" {
  name     = "new_resource101"
  location = "East US 2"
}



resource "azapi_resource" "purviewresource1" {
  type      = "Microsoft.Purview/accounts@2021-07-01"
  name      = "harishperview12"
  location  = "East US 2"
  parent_id = azurerm_resource_group.new_resource101.id

  identity {
    type = "SystemAssigned"
    #identity_ids = ["SystemAssigned"]
  }
  body = jsonencode({
    properties = {
      cloudConnectors          = {}
      managedResourceGroupName = "purviewresource11"
      publicNetworkAccess      = "Enabled"
    }
  })
}

resource "azurerm_resource_group" "new_resource111" {
  name     = "new_resource111"
  location = "East US 2"
}

resource "azapi_resource" "purviewresource2" {
  type      = "Microsoft.Purview/accounts@2021-07-01"
  name      = "harishperview1o2"
  location  = "East US 2"
  parent_id = azurerm_resource_group.new_resource111.id

  identity {
    type = "SystemAssigned"
    #identity_ids = ["SystemAssigned"]
  }
  body = jsonencode({
    properties = {
      cloudConnectors          = {}
      managedResourceGroupName = "purviewresource111"
      publicNetworkAccess      = "Enabled"
    }
  })
}