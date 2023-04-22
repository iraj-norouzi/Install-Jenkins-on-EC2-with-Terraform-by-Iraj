terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.64.0"
    }
  }
}

# configured aws provider with proper credentials
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

