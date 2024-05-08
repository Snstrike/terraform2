output "subnet_id" {
  description = "ID de la subnet"
  value = aws_subnet.subnet[0].id
}