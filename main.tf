terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"

    }
  }
}

provider "aws" {
  shared_credentials_files = [""]
  region                   = var.aws_region
  profile                  = "default"
}

resource "aws_instance" "paulo-ec2-teste" {
  ami           = "ami-0096528c9fcc1a6a9"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id
  tags = {
    "Name"  = "paulos-mean-machine"
    "Env"   = "paulos-env"
    "squad" = "sfh"
  }
}

resource "aws_ecr_repository" "paulo_ecr_repo" {
  name = "paulo_ecr_repo"
  image_scanning_configuration {
    scan_on_push = true
  }
}
