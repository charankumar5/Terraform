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

# Define variables for aws instance
variable "instance_type" {
  description = "Type of the AWS EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID for the AWS EC2 instance"
  type        = string
}

variable "environment" {
    description = "Environment tag for the AWS EC2 instance"
    type        = string
    default = "Dev"
}

resource "aws_instance" "web" {
    ami = "ami-004e960cde33f9146"
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    tags = {
        Name = "${var.environment}-Instance"
        Environment = var.environment
    }
}