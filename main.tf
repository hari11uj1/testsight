resource "azurerm_resource_group" "new_resource11" {
  name     = "new_resource11"
  location = "West Europe"
}




resource "azapi_resource" "purviewresource1" {
  type      = "Microsoft.Purview/accounts@2021-07-01"
  name      = "harishperview12"
  location  = "West Europe"
  parent_id = azurerm_resource_group.new_resource11.id

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