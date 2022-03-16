#
# Local constants for Test
locals {

  ####################################
  ## Cluster #########################
  ####################################
  cluster_name                        = "aks-test"
  cluster_prefix                      = "aks-test"
  region                              = "West US 2"
  resource_group_name                 = "rg-test"
  resource_group_name_prefix          = "rg-test"
  # 1.21.2 is not available in East/West us  az aks get-versions --location eastus
  kubernetes_version                  = "1.21.7"

  ####################################
  ## Linux Profile ###################
  ####################################
  linux_admin_username                = "aksadmin"

  ####################################
  ## Default Node Pool ###############
  ####################################
  node_count                          = 3
  node_type                           = "standard_D2as_v5"
  node_availability_zones             = [1, 2, 3]
  environment                         = "Test"

}
