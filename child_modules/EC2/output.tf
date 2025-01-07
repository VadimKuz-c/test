output "ec2_id" {
  value = { for key, instance in aws_instance.for_each : key => instance.id }
}
