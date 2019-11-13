variable "account" {
  default = "514211533206"
}

variable "Account" {
  default = "uoa-sandbox"
}

variable "AWS_REGION" {
  default = "ap-southeast-2"
}

variable "AMIS" {
  type = map(string)
  default = {
    //Amazon Linux 2 AMI (HVM), SSD Volume Type
    ap-southeast-2 = "ami-08a74056dfd30c986"
  }
}

