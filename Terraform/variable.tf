variable "ami" {
	description = "AMI ID used to launch the instance"
	type        = string
}

variable "subnet_id" {
	description = "Subnet ID where the instance will be deployed"
	type        = string
}

variable "key_name" {
	description = "Name of the EC2 key pair"
	type        = string
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
  default     = "t3.micro"
}   