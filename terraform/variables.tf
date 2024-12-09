variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance (Amazon Linux 2)"
  type        = string
  default     = "ami-0e731c8a588258d0d"  # Amazon Linux 2 AMI ID para us-east-1
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "domain_name" {
  description = "Domain name for Route 53"
  type        = string
}
