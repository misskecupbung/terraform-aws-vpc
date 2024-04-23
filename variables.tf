#----------------------------------------------------------------------------
# Variables
#----------------------------------------------------------------------------

variable "account_id" {
  description = "AWS Account ID."
  type        = string
}

variable "aws_region" {
  description = "Specific location for the resources. Default ap-southeast-1"
  type        = string
  default     = "ap-southeast-1"
}

variable "env_code" {
  description = "Environment code such as dev, qa or prd."
  type        = string
}


variable "cidr_block" {
  description = "The IPv4 CIDR block for the VPC."
}