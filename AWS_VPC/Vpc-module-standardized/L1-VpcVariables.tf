# Vpc input variables

# vpc name 
variable "vpc_name" {
  description = "name of vpc"
  type        = string
  default     = "my_vpc"
}

# vpc cidr block
variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"

}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]

}

# vpc public subnet
variable "vpc_public_subnet" {
  description = "vpc public subnet"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]

}

# vpc private subnet
variable "vpc_private_subnet" {
  description = "vpc private network"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]

}

# vpc database subnet
variable "vpc_database_subnet" {
  description = "vpc database subnet"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]

}

# vpc create database subnet group
variable "vpc_create_database_subnet_group" {
  description = "vpc database subnet group"
  type        = bool
  default     = true

}

# vpc create database subnet route table
variable "vpc_create_database_subnet_route_table" {
  description = "vpc database subnet route table"
  type        = bool
  default     = true

}

# vpc enable NAT gateway 
variable "vpc_enable_nat_gateway" {
  description = "vpc NAT gateway enable"
  type        = bool
  default     = true

}

# vpc single NAT Gateway 
variable "vpc_single_nat_gateway" {
  description = "single NAT gateway"
  type        = bool
  default     = true

}