variable "intance-ec2" {
  type = string
  default = "i-02dd382fc9ff81118"
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