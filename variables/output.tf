output "aws_instance_id" {
    description = "The ID of the AWS EC2 instance"
    value       = aws_instance.web.id
}