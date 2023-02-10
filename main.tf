resource "azurerm_resource_group" "new_resource01" {
  name     = "new_resource01"
  location = "East US"
}




resource "azapi_resource" "purviewresource1" {
  type      = "Microsoft.Purview/accounts@2021-07-01"
  name      = "harishperview12"
  location  = "East US"
  parent_id = azurerm_resource_group.new_resource01.id

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