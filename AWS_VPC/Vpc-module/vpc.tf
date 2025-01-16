module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.17.0"

  # basic details
  name = "vpc-dev"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]


  # Database subnets
  create_database_subnet_group       = true
  create_database_subnet_route_table = true
  database_subnets                   = ["10.0.151.0/24", "10.0.152.0/24"]

  # NAT Gateways - outbound comm
  enable_nat_gateway = true
  single_nat_gateway = true

  # vpc dns param
  enable_dns_hostnames = true
  enable_dns_support   = true

  # tags
  public_subnet_tags = {
    name = "public-subnets"
  }
  private_subnet_tags = {
    name = "private-subnets"
  }
  database_subnet_tags = {
    name = "databse-subnet"
  }
  tags = {
    owner       = "satya"
    Environment = "dev"
  }
  vpc_tags = {
    name = "vpc-dev"
  }


}
