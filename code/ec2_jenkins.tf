module "ec2-Jenkins" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.5.0"

  name = "Jenkins-instance"

  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.aws_key_name
  #   monitoring             = true
  vpc_security_group_ids = [module.security-group.security_group_id]
  #   subnet_id              = "subnet-eddcdzz4"
  user_data = file("${path.module}/install_jenkins.sh")

  tags = local.common_tags
}

output "publuc_dns" {
  description = "publix dns"
  value       = module.ec2-Jenkins.public_dns

}

## ec2_jenkins_public_ip
output "ec2_jenkins_public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = module.ec2-Jenkins.public_ip
}
