terraform {
	required_providers {
		aws = {
			source  = "hashicorp/aws"
			version = "~> 5.0"
		}

         local = {
      source  = "hashicorp/local"
    }
	}
}



provider "aws" {
	region = "us-east-1"
}

resource "local_file" "ec2_ip" {
  filename = "${path.module}/ec2_ip.txt"
  content  = aws_instance.example.public_ip
}

resource "aws_instance" "example" {
	ami           = var.ami
	instance_type = "t2.micro"
	key_name      = var.key_name
    subnet_id     = var.subnet_id
	associate_public_ip_address = true
    
}
