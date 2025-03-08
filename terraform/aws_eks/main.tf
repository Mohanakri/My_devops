terraform {
  backend "s3" {
    bucket  = "your-terraform-state-bucket101"
    key     = "eks/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
##
provider "aws" {
  region = "us-east-1"
}


## Create VPC for EKS
resource "aws_vpc" "eks_vpc" {
  name = "eks-vpc"
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

# Create public subnets
resource "aws_subnet" "public_subnet_1" {
  name  = "public-subnet-1"
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_2" {
  name       = "public-subnet-2"
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
}
