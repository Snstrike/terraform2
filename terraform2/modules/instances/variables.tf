variable "instance_name" {
  type = string
  description = "Nombre de la instancia"
  default = "Instancia"
}

variable "instance_type" {
  type = string
  description = "Tipo de instancia"
}

variable "subnet_id" {
  type = string
  description = "ID de la subred"
}