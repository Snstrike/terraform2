terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "vpc_1" {
  source = "./modules/network"
  vpc_name = "VPC 1"
}

module "subnet_1" {
  source = "./modules/subnet"
  vpc_id = module.vpc_1.vpc_id # ID de la VPC creada por el módulo vpc_1
  vpc_cidr_block = module.vpc_1.cidr_block # Bloque CIDR de la VPC creada por el módulo vpc_1
  subnet_name  = "Subred 1"
}

module "instance_1" {
  source = "./modules/instances" 
  instance_name = "Instancia 1"
  instance_type =  var.instance_type
  subnet_id = module.subnet_1.subnet_id # ID de la subred creada por el módulo subnet_1
}

module "vpc_2" {
  source = "./modules/network" 
  vpc_name = "VPC 2"
}

module "subnet_2" {
  source = "./modules/subnet" 
  vpc_id = module.vpc_2.vpc_id # ID de la VPC creada por el módulo vpc_2
  vpc_cidr_block = module.vpc_2.cidr_block # Bloque CIDR de la VPC creada por el módulo vpc_2
  subnet_name  = "Subred 2"
}

module "instance_2" {
  source = "./modules/instances" 
  instance_name = "Instancia 2"
  instance_type =  var.instance_type 
  subnet_id = module.subnet_2.subnet_id # ID de la subred creada por el módulo subnet_2
}