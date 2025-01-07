# 1 variation
# variable "vpc_id" {
#   type = string
# }
# variable "subnets" {
#   type = map(object({
#     cidr_block        = string
#     availability_zone = string
#     map_public_ip_on_launch = bool
#   }))
# }


#2 variation 
# variable "cidr_block_subnets" {
#     description = "cidr block for public subnets"
#     type = list(string)
# }
# variable "subnet_name" {
#     description = "name for public subnets"
#     type = string
# }
# variable "vpc_id" {
#     description = "refrencing vpc id for public subnets"
#     type = string  
# }
# variable "availability_zone" {
#     description = "specifying AZ for public subnets"
#     type = list(string)
# }
# variable "map_public_ip_on_launch" {
#   type = bool
# }


#3 variation 
# variable "vpc_id" {
#   type = string
# }
# variable "map_public_ip_on_launch" {
#   type = bool
# }
# variable "subnet_name" {
#   type = string
# }
# variable "cidr_block_subnets" {
#   type = string
# }
# variable "availability_zone" {
#   type = string
# }


