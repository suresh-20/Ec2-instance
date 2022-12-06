provider "aws" {
<<<<<<< HEAD
    region = ap-south-1
  }
    module "ec2_instance" {
        source = "terrafom"
        version = "3"
      
  name = terraform

  count = 2

   ami = "ami-074dc0a6f6c764218"
   instance_type = "t2.micro"
   key-name = "key1"
   monitoring = true
   vpc_security_group-ids = ["sg-0098efc430c17bab4"]
   subnet_id = "subnet-07a1d7af486ceb516"

 tags = {
    terraform = "true"
    environment = "dev"
  }
}1st commit

2nd commit
=======
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

one
>>>>>>> 0b666d57d607b2c77ccb965229814c7fa88a8752
