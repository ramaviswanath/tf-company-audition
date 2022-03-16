# Deploys the NginX App
resource "helm_release" "nginxapp" {
  depends_on = [helm_release.ingress]

  name       = "nginxapp"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "bitnami/nginx"

  values = [
    file("${path.module}/app_values/${local.environment}-nginx-values.yaml")
  ]

}
