
#Azure AKS Output
output "id" {
  value = azurerm_kubernetes_cluster.akscluster.id
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config_raw
}

output "client_key" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config.0.client_key
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config.0.client_certificate
}

