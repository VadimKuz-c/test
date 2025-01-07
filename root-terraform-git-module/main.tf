module "vpc" {
  source = "../child_modules/vpc"
  cidr_block_vpc = "10.10.0.0/16"
  vpc_name = "vpc-1"
}

module "s3-backend" {
  source = "../child_modules/S3"
  bucket_name = "state-remote-0291834594"
}