variable "aws_access_key_id" {
  default = ""
}

variable "aws_secret_access_key" {
  default = ""
}

variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  default = ""
}

variable "availability_zone" {
  default = {
    "primary": "us-east-1c",
    "secondary": "us-east-1d"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  # # Amazon Linux AMI
  # default = {
  #   "us-east-1": "ami-76817c1e",
  #   "us-west-2": "ami-d13845e1",
  #   "us-west-1": "ami-f0d3d4b5",
  #   "eu-west-1": "ami-892fe1fe",
  #   "ap-southeast-1": "ami-a6b6eaf4",
  #   "ap-northeast-1": "ami-29dc9228",
  #   "ap-southeast-2": "ami-d9fe9be3",
  #   "sa-east-1": "ami-c9e649d4",
  #   "cn-north-1": "ami-ccb82af5"
  # }
  default = "ami-76817c1e"
}

variable "vpc_cidr_block" {
  default = "172.16.0.0/16"
}

variable "subnet_cidr_block" {
  default = {
    "primary": "172.16.1.0/24",
    "secondary": "172.16.2.0/24"
}
