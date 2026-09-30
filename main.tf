provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t3.micro"
  subnet_id = "subnet-00815553353a9b8d2"
  key_name = "my-key"

  tags = {
    Name = "My-Terraform-EC2"
  }
}