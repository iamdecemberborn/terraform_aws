terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.31"
    }
  }
}

# The provider block must have region and keys
provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAZDZTBWAIN4MRKBEV"
  secret_key = "nYjyhWzUJQMVbrb4nz1/WfGPIjbwy/4e6hlKaaEA"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "awsbucketcreatedviaterrafrom"
}

resource "aws_s3_object" "sample_csv" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "sample.csv"
  source = "sample.csv"
}

resource "aws_s3_object" "products_csv" {
  bucket = aws_s3_bucket.mybucket.id
  key    = "products.csv"
  source = "products.csv"
}