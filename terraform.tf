provider "aws" {
  region  = "ap-south-1"
  }
module "ec2_instance" {
     source  = "terraform-aws-modules/ec2-instance/aws"
      version = "~> 3.0"
     
   name = "single-instance"

  ami                    = "ami-074dc0a6f6c764218"
  instance_type          = "t2.micro"
  key_name               = "key1"
  monitoring             = true
  vpc_security_group_ids = ["sg-0098efc430c17bab4"]
  subnet_id              = "subnet-07a1d7af486ceb516"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}