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
terraform {
  backend "s3" {
    bucket = "statefile-bucket-56"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statefile"
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "default"
}