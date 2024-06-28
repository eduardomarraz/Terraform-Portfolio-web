


# Mostrar información resultante de la infraestructura

output "public_ip" {
  description = "Dirección IP publica de la instancia EC2"
  value       = aws_instance.web.public_ip
}
output "subnet_names" {
  value = local.subnet_names
}

output "subnet_ids" {
  value = aws_subnet.subnet[*].id
}

output "fecha_creacion" {
  description = "Fecha de Creación de la Instancia"
  value       = aws_instance.web.tags["CreatedAt"]
}
