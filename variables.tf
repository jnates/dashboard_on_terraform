variable "ec2-instance" {
  type = "string"
  default = "i-19dh898fc9hg42532"
}

variable "region" {
  description = "default region"
}

variable "name-instance" {
  type = string
  default = "name"
}

variable "sqs-queue-name" {
  type = string
  default = "sqs-queue-name"
}