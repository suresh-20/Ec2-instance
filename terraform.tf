module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"
(for multi intsance  {sount =5})
  name = "single-instance"

  ami                    = "ami-0e6329e222e662a52"
  instance_type          = "t2.micro"
  key_name               = "key1"
  monitoring             = true
  vpc_security_group_ids = ["sg-0098efc430c17bab4"]
  subnet_id              = "subnet-07a1d7af486ceb516"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
