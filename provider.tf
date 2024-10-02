terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "remote-key"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "devops"
  }
}

provider "aws" {
  # Configuration options
  region="us-east-1"
}