variable "instances" {
  description = "Map of instances to be created, with details for each instance."
  type = map(object({
    ami                     = string
    instance_type           = string
    subnet_id               = string
    vpc_security_group_ids  = list(string)
  }))
}