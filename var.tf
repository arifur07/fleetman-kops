variable "REGION" {
  default = "us-east-1"
}
variable "ZONE1" {
  default = "us-east-1a"
}
variable "AMIS" {
  default = {
    us-east-1 = "ami-0b5eea76982371e91"
  }
}
variable "USER" {
  default = "ec2-user"
}
