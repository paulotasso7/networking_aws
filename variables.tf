variable "vpc_cidr" {
  type        = string
  default     = "192.168.80.0/23"
  description = "cidr"
}

variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}

variable "my_bucket" {
  type        = string
  default     = "paulos-bucket"
  description = "paulo 1st bucket var"
}

variable "default_block" {
  default = ["0.0.0.0/0"]
}

variable "ingress_block" {
  default = ["187.180.61.162/32"]
}

variable "cidr_east-1a" {
  default = "192.168.80.0/24"
}

variable "cidr_east-1b" {
  default = "192.168.81.0/24"
}

