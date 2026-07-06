locals {
  services = [
    "frontend", "cartservice", "checkoutservice", "paymentservice",
    "currencyservice", "shippingservice", "productcatalogservice",
    "recommendationservice", "adservice", "frauddetectionservice",
    "accountingservice", "quoteservice", "loadgenerator"
  ]
}

resource "aws_ecr_repository" "svc" {
  for_each             = toset(local.services)
  name                 = "otel-demo/${each.value}"
  image_tag_mutability = "MUTABLE"
  force_delete         = true   # lets terraform destroy clean up images too, fine for learning
}
