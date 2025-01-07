variable "sg_name" {
  type = string
}
variable "sg_description" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "ingress_rule" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}
variable "egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}