# output file

# vpc id
output "vpc_id" {
  description = " vpc id"
  value       = module.vpc.vpc_id
}

# cidr block
output "vpc_cidr_block" {
  description = "cidr block of vpc"
  value       = module.vpc.vpc_cidr_block
}

# vpc private subnet
output "private_subnet" {
  description = " private subnet"
  value       = module.vpc.private_subnets
}

# vpc public subnet
output "public_subnet" {
  description = "public subnet"
  value       = module.vpc.public_subnets

}

output "azs" {
  description = "availability zones "
  value       = module.vpc.azs

}