module "aws_web_server_vpc" {
  source = "../vpc"
}
 
module "aws_web_server_instance" {
  source            = "../ec2"
  ec2_instance_type = var.ec2_instance_type
  vpc_id            = module.aws_web_server_vpc.vpc_id
  subnet_id         = module.aws_web_server_vpc.subnet_id
}