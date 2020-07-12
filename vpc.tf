provider "aws" {
  region = "ap-south-1"
  profile = "srishti_jain"
}

resource "aws_vpc" "taskvpc" {
  cidr_block = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "taskvpc"
  }
}