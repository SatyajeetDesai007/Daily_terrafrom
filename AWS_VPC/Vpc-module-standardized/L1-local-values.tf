# here we define local values in terraform
locals {
  owners      = var.Bussiness_Division
  environment = var.Environment
  name        = "${var.Bussiness_Division}-${var.Environment}"

  common_tag = {
    owners      = local.owners
    environment = local.environment
  }
}