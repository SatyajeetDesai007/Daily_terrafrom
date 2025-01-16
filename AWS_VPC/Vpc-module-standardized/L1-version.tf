terraform {
  # required version mst be grater than that.
  required_version = ">= 0.14, < 2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.46.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "default"
}