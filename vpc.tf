provider "aws" {
    region = "us-east-1"
}
resource "aws_vpc" "vpcproducts" {

  cidr_block = "192.168.0.0/16"


 
 tags = {
    Name = "vpc-fruits"
    }
  
}
