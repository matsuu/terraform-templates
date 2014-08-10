variable "aws_access_key_id" {
  default = ""
}

variable "aws_secret_access_key" {
  default = ""
}

variable "aws_region" {
  default = "ap-northeast-1"
}

variable "key_name" {
  default = ""
}

variable "availability_zone" {
  default = {
    "primary": "ap-northeast-1b",
    "secondary": "ap-northeast-1c"
  }
}

variable "instance_type" {
  default = "t1.micro"
}

variable "ami" {
  default = "ami-25dd9324"
}
