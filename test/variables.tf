#Service Principal Credentials

variable "client_id" {
  description = "Azure Kubernetes Service Cluster service principal"
  sensitive   = true

}

variable "client_secret" {
  description = "Azure Kubernetes Service Cluster password"
  sensitive   = true
}

##Nginx App
variable ingress_create {
  type        = bool
  description = "Whether to create the ingress entry"
  default     = true
}