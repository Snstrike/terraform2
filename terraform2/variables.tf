variable "network_name" {
  type = string
  description = "Nombre de la red"
  sensitive = true
}

variable "instance_name" {
  type = string
  default = "Nombre de la Instancia"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}