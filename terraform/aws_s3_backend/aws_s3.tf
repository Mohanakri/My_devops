provider "aws" {
  region = "us-east-1"

}

# Create S3 bucket for Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "your-terraform-state-bucket101"

  #   lifecycle {
  #     prevent_destroy = true
  #   }
}


resource "aws_s3_bucket_lifecycle_configuration" "delete_versions" {
  bucket = aws_s3_bucket.terraform_state.id

  rule {
    id     = "delete-all-versions"
    status = "Enabled"

    noncurrent_version_expiration {
      noncurrent_days = 1
    }
  }
}

# Enable versioning on S3 bucket
resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Restrict public access to the S3 bucket
resource "aws_s3_bucket_public_access_block" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

#### Create DynamoDB table for state locking
resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
##
output "s3_bucket_name" {
  value = aws_s3_bucket.terraform_state.id
}

output "dynamodb_table_name" {
  value = aws_dynamodb_table.terraform_lock.name
}
