terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = ""
  secret_key = ""
}

##Subnet vpc
resource "aws_vpc" "ss0x44_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf_ss0x44_vpc"
  }
}
##Subnet creation
resource "aws_subnet" "subnet_ss0x44" {
  vpc_id            = aws_vpc.ss0x44_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "ap-south-1a"
  tags = {
    Name = "tf_subnet_ss0x44"
  }
}
##ec2 launch 
resource "aws_instance" "ss0x44_node1" {
  ami           = "ami-06a0b4e3b7eb7a300"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_ss0x44.id
}
