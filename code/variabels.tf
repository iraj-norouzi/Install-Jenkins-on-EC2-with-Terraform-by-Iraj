# Input Variables

# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-1"
}

# AWS Profile
variable "aws_profile" {
  description = "Profile"
  type        = string
  default     = "default"
}

variable "instance_type" {
  description = "here you should choose an instance type"
  type        = string
  default     = "t2.micro"
}
variable "aws_key_name" {
  description = "key name"
  type        = string
  default     = "irajj"
}

variable "environment" {
  description = "environment"
  type        = string
  default     = "Production"
}

variable "business_divsion" {
  description = "business_divsion"
  type        = string
  default     = "DevOps"
}
