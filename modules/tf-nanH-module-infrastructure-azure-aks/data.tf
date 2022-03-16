# Datasource to get  Azure AKS  Version
data "azurerm_kubernetes_service_versions" "version" {
  location = azurerm_resource_group.aksrg.location
  include_preview = false
}