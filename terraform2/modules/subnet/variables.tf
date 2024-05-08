variable "vpc_id" {
  type = string
  description = "ID de la VPC en la que crear las subredes"
}

variable "vpc_cidr_block" {
  type = string
  description = "Bloques CIDR para las subredes"
}

variable "subnet_name" {
  description = "Nombre de la subred"
  default     = "Subred"
}