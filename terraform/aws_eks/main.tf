terraform {
  backend "s3" {
    bucket  = "your-terraform-state-bucket101"
    key     = "eks/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
provider "aws" {
  region = "us-east-1"
}

#3

