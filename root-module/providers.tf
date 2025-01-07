terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.2"
    }
  }
  backend "s3" {
    bucket         = "state-remote-0291834594"
    key            = "remote/state-file"
    region         = "us-east-1"
    dynamodb_table = "lock-state-s3"
  }
}

provider "aws" {
  region = "us-east-1"
}