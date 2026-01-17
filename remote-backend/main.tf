terraform {

  backend "s3" {
    bucket = "goppodivirababu"
    key    = "dev/terraform.tfstate"
    region = "eu-central-1"
    use_lockfile = true
    encrypt = true

  }

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


# # Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
# }

# Create an S3 Bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "char-bucket-test"
  region = "eu-central-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}