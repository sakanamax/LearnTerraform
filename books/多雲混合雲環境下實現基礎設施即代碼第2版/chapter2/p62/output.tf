output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP address of the web server"
}

output "server_port" {
    # 這邊嘗試印出 server_port 變數內容
    value = var.server_port
}