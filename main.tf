terraform {
  required_version = ">=1.5.5"

  backend "s3" {
    encrypt = "true"
    region  = "ap-southeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.20.1"
    }
  }
}


provider "aws" {
  region = var.aws_region
}

locals {
  common_tags = {
    env_code        = var.env_code
  }
}