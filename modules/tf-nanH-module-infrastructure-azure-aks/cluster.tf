## Resource Group
resource "azurerm_resource_group" "aksrg" {
  name              = var.resource_group_name
  location          = var.region
}

# AKS Cluster
resource "azurerm_kubernetes_cluster" "akscluster" {

  depends_on = [azurerm_resource_group.aksrg]

  name                = "${var.cluster_prefix}-cluster"
  location            = azurerm_resource_group.aksrg.location
  dns_prefix          = var.cluster_name
  resource_group_name = var.resource_group_name
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name                  = "default"
    node_count            = var.node_count
    vm_size               = var.node_type
    availability_zones    = var.node_availability_zones
    orchestrator_version  = var.kubernetes_version

    node_labels = {
      "environment"      = var.environment
    }

  }

  # RBAC
  role_based_access_control {
    enabled = true
  }

  #HTTP Routing
  addon_profile {
    http_application_routing {
      enabled = false
    }
  }


  #Linux Profile
  linux_profile {
    admin_username = var.linux_admin_username

    ssh_key {
      key_data =  file("${path.module}/ssh/${var.environment}-id_rsa.pub")
    }
  }

  #Service Principal
  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

 # Network Profile
  network_profile {
    network_plugin = "azure"
  }

  tags = merge(
    var.tags,
    {
      created-by    = "Terraform"
  })
  }

## Grab Kubeconfig
resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.akscluster]
  filename     = "${var.environment}-kubeconfig"
  content      = azurerm_kubernetes_cluster.akscluster.kube_config_raw
}