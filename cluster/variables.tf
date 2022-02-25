#####variables
variable "env" {
  type = string
  default = "terraform"
}

variable "container_insights" {
  type = string
  default = "disabled"
}
/*variable "vpc_id" {
  type = string
  default = ""
}
*/