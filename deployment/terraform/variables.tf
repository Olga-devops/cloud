variable "name" {
  default = "mysql"
}

variable "chart" {
  default = "./mysql"
}

variable "version" {
  default = "6.0.1"
}

variable "docker_image" {
  default = "mysql"
}

variable "docker_image_tag" {
  default = "latest"
}

variable "domain_name" {
  default = "mysql.fuchicorp.com"
}

variable "namespace" {
  default = "test"
}
