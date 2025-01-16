# aws region
variable "aws_region" {
  description = "region where aws resource created"
  type        = string
  default     = "us-east-1"

}

# Environment variable
variable "Environment" {
  description = "enviroment variable"
  type        = string
  default     = "Dev"
}

# bussiness Div
variable "Bussiness_Division" {
  description = "bussiness division large org"
  type        = string
  default     = "Sales"
}