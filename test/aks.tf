
#Create the AKS Cluster
module "akscluster" {
  source = "../modules/tf-nanH-module-infrastructure-azure-aks"


  cluster_name                        = local.cluster_name
  cluster_prefix                      = local.cluster_prefix
  region                              = local.region
  resource_group_name                 = local.resource_group_name
  resource_group_name_prefix          = local.resource_group_name_prefix
  kubernetes_version                  = local.kubernetes_version

  linux_admin_username                = local.linux_admin_username

  node_count                          = local.node_count
  node_type                           = local.node_type
  node_availability_zones             = local.node_availability_zones
  environment                         = local.environment

  client_id                           = var.client_id
  client_secret                       = var.client_secret

}

