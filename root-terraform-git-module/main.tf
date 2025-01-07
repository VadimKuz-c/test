module "vpc" {
  source = "../child_modules/vpc"
  cidr_block_vpc = "10.10.0.0/16"
  vpc_name = "vpc-1"
}

module "s3-backend" {
  source = "../child_modules/S3"
  bucket_name = "state-remote-0291834594"
}

# # 1 variation
# module "public_subnets" {
#   source = "../child_modules/subnets"
#   vpc_id = module.vpc.vpc_id
#   subnets = {
#     Public-1 = {
#       cidr_block = "10.10.1.0/24"
#       availability_zone = "us-east-1a"
#       map_public_ip_on_launch = true
#     } 
#     Public-2 = {
#       cidr_block = "10.10.2.0/24"
#       availability_zone = "us-east-1b"
#       map_public_ip_on_launch = true
#     } 
#   }
# }


# 2 variation
# module "public_subnets" {
#   source = "../child_modules/subnets"
#   cidr_block_subnets = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
#   vpc_id = module.vpc.vpc_id
#   availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
#   map_public_ip_on_launch = true
#   subnet_name = "public"
# }

# module "private_subnets" {
#   source = "../child_modules/subnets"
#   subnet_name = "private"
#   map_public_ip_on_launch = false
#   vpc_id = module.vpc.vpc_id
#   cidr_block_subnets = ["10.10.4.0/24", "10.10.5.0/24", "10.10.6.0/24"]
#   availability_zone = ["us-east-1d", "us-east-1e", "us-east-1f"]
# }



# 3 variation
# module "public_subnets" {
#   source = "../child_modules/subnets"
  
#   for_each = {
#     subnet1 = {
#       cidr_block = "10.10.1.0/24"
#       az         = "us-east-1a"
#       map_public_ip_on_launch = true
#     }
#     subnet2 = {
#       cidr_block = "10.10.2.0/24"
#       az         = "us-east-1b"
#       map_public_ip_on_launch = true
#     }
#     subnet3 = {
#       cidr_block = "10.10.3.0/24"
#       az         = "us-east-1c"
#       map_public_ip_on_launch = true
#     }
#   }
#   vpc_id           = module.vpc.vpc_id
#   cidr_block_subnets = each.value.cidr_block
#   subnet_name       = each.key
#   availability_zone = each.value.az
#   map_public_ip_on_launch = each.value.map_public_ip_on_launch
# }
