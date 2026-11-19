output "instance_id" {
  value = aws_instance.monitoring.id
}

output "public_ip" {
  value = aws_instance.monitoring.public_ip
}

output "alarm_name" {
  value = aws_cloudwatch_metric_alarm.cpu_alarm.alarm_name
}
