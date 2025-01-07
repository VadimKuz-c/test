resource "aws_iam_user" "developer" {
  name     = var.user_name
}

variable "user_name" {
  description = "name of IAM users"
  type = string
}