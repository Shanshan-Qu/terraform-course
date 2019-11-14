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
    //ami-0328aad0f6218c429 ubuntu 16.04
    //ami-08a74056dfd30c986 amazon linux 
    ap-southeast-2 = "ami-08a74056dfd30c986"
  }
}

variable "vpc_id" {
  default = "vpc-1e77d279"
}

variable "ec2_name" {
  default = "Shanshan-test"
}