## Nginx Ingress Controller

resource "helm_release" "ingress" {


  name       = "nginx-ingress"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx/ingress-nginx"

  values = [
    file("${path.module}/ingress_values/${local.environment}-ingress-values.yaml")
  ]

}