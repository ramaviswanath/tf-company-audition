## AKS CLuster variables
variable "cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "cluster_prefix" {
  type        = string
  description = "Prefix to the AKS cluster"
}

variable "region" {
  type        = string
  description = "Azure Region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to use"
}

variable "resource_group_name_prefix" {
  type        = string
  description = "Prefix of the resource group to use"
}

variable "kubernetes_version" {
  description = "The AKS Kubernetes version"
  default     = null
}

## Linux Profile
variable "linux_admin_username" {
  type        = string
  default     = "aksadmin"
  description = "The admin username set in the linux_profile"
}

## HTTP Routing
variable "enable_http_application_routing" {
  default = false
}

## Service Principal Credentials
variable "client_id" {
  type        = string
  default     = 1
  description = "Service Principle Client ID"
}

variable "client_secret" {
  type        = string
  default     = 1
  description = "Service Principle Client Secret"
}

## Default Node Pool Options
variable "node_count" {
  default     = 1
  description = "The default node pool instance count"
}

variable "node_type" {
  default     = "Standard_D2_v2"
  description = "The Azure VM instance type"
}

variable "node_availability_zones" {
  default     = [1, 2, 3]
  description = "The availability zones to place the node pool instances"
}

variable "environment" {
  description = "Environment"
}

###############################
## Tags #######################
###############################
variable tags {
  type = map
  default = {
    "CreatedBy"        = "Terraform"
    "Module"           = "tf-nanH-module-infrastructure-azure-aks"
  }
}
