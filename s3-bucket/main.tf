terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

# Create an S3 Bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "char-bucket-test"
  region = "eu-central-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}