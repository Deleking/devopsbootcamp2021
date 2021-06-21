terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-1"
}

data "template_file" "ec2_user_data" {
    template ="${file("${path.module}/bootstrap.txt")}"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0ac43988dfd31ab9a"
  instance_type = "t2.micro"
  key_name      = "june2021"
  user_data = "${data.template_file.ec2_user_data.template}"

  tags = {
    Name = "WebServer2"
  }
}