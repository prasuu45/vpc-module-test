terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }


  backend "s3" {
    bucket = "hinata-online"
    key    = "expence-vpc"
    region = "us-east-1"
    dynamodb_table = "hinata"
  }
}



provider "aws" {
  # Configuration options
  region = "us-east-1"
}