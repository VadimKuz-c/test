resource "aws_instance" "for_each" {
  for_each = var.instances
  ami = each.value.ami
  instance_type = each.value.instance_type
  subnet_id = each.value.subnet_id
  vpc_security_group_ids = each.value.vpc_security_group_ids

  tags = {
    Name = each.key
  }
}