module "securitygroup" {
  #source = "/c/Users/prudh/Desktop/uptime/cluster"
  source = "./../cluster"
 # env = "terraform"
}
terraform {
  required_providers {
    aws = {
      version = ">= 3.7.0"
      source = "hashicorp/aws"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  profile = "default"
}