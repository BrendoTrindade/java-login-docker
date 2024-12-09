output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_eip.app.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app.id
}

output "nameservers" {
  description = "Nameservers for the Route 53 zone"
  value       = aws_route53_zone.main.name_servers
}

output "app_url" {
  description = "URL for the application"
  value       = "http://${aws_route53_record.app.name}"
}
