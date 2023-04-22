# AWS EC2 Security Group Terraform Module
module "security-group" {
  source      = "terraform-aws-modules/security-group/aws"
  version     = "4.17.2"
  name        = "public-jenkins-sg"
  description = "Security Group with SSH port open for everybody (IPv4 CIDR), egress ports are all world open"
  #   vpc_id = module.vpc.vpc_id
  # vpc_id = data.aws_vpc.default.id
  # Ingress Rules & CIDR Blocks
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  #################
  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      description = "User-service ports (ipv4)"
      cidr_blocks = "0.0.0.0/0"
  }, ]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags         = local.common_tags

}
