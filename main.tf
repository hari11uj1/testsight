resource "azurerm_resource_group" "purview_test_012" {
  name     = "purview_test_02"
  location = "East US"
}




resource "azapi_resource" "purviewresource1" {
  type      = "Microsoft.Purview/accounts@2021-07-01"
  name      = "harishperview12"
  location  = "East US"
  parent_id = azurerm_resource_group.purview_test_012.id

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