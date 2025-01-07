# 1 variation
# output "subnet_id" {
#     value = { for key, subnet in aws_subnet.default : key => subnet.id }
# }


# 2 variation
# output "subnet_id" {
#   value = { for key, subnet in aws_subnet.this : key => subnet.id }
# }


# 3 variation
# output "subnet_id" {
#     value = aws_subnet.this.id
# }



