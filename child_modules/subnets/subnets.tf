# 1 variation
# resource "aws_subnet" "this" {
#   for_each = var.subnets
#   vpc_id = var.vpc_id
#   cidr_block = each.value.cidr_block
#   availability_zone = each.value.availability_zone
#   map_public_ip_on_launch = each.value.map_public_ip_on_launch

#   tags = {
#     Name = each.key
#   }
# }






# 2 variation
# resource "aws_subnet" "default" {
#   for_each = { for idx, cidr in var.cidr_block_subnets : idx => {
#     cidr_block        = cidr
#     availability_zone = var.availability_zone[idx]
#   } }
#   vpc_id     = var.vpc_id
#   cidr_block = each.value.cidr_block
#   availability_zone       = each.value.availability_zone
#   map_public_ip_on_launch = var.map_public_ip_on_launch

#   tags = {
#     Name = "${var.subnet_name}-${each.key}"
#   }
# }


# 3 variation 
# resource "aws_subnet" "this" {
#   vpc_id = var.vpc_id
#   cidr_block = var.cidr_block_subnets
#   availability_zone = var.availability_zone
#   map_public_ip_on_launch = var.map_public_ip_on_launch

#   tags = {
#     Name = var.subnet_name
#   }
# }
