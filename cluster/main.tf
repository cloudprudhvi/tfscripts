locals {
  env = lower(var.env)
}
data "aws_vpc" "selected" {
  #count = "${var.vpc_id == "" ? 1 : 0}"
  state = "available"
  tags = {
      env = "terraform"
      managedby = "terraform"
      Name      = "${local.env}-vpc"
  }
}
resource "aws_security_group" "default" {
  name_prefix = "${local.env}-uptime"
  #vpc_id = "${var.vpc_id == "" ? data.aws_vpc.selected.id[0] : var.vpc_id}"
  vpc_id = "${data.aws_vpc.selected.id}"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}
