output "vpc_id" {
  description = "ID de la VPC"
  value       = aws_vpc.vpc.id
}

output "cidr_block" {
  description = "Bloque CIDR de la VPC"
  value       = aws_vpc.vpc.cidr_block
}
