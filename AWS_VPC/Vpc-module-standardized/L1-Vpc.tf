module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.17.0"


  # vpc details
  name            = "${local.name}-${var.vpc_name}"
  cidr            = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnet
  private_subnets = var.vpc_private_subnet

  # database subnet 
  database_subnets                   = var.vpc_database_subnet
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  # create_database_internet_gateway_route = 
  # create_database_nat_gateway_route = 


  # NAT gw outbound communication
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  # VPC DNS param
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags     = local.common_tag
  vpc_tags = local.common_tag

  # additional tags
  public_subnet_tags = {
    type = "public subnets"
  }
  private_subnet_tags = {
    type = "private subnet"
  }

}

