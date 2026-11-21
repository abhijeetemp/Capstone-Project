output "load_balancer_dns" {
  description = "Public DNS name of the Application Load Balancer"
  value       = aws_lb.app.dns_name
}

output "web_instance_ids" {
  description = "IDs of the two web servers"
  value       = aws_instance.web[*].id
}

output "web_server_public_ips" {
  description = "Public IP addresses of the web servers"
  value       = aws_instance.web[*].public_ip
}

output "target_group_arn" {
  description = "ARN of the target group"
  value       = aws_lb_target_group.web.arn
}
