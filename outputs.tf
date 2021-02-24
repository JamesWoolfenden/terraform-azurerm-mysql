output "server" {
  value     = azurerm_mysql_server.examplea
  sensitive = true
}

output "database" {
  value = azurerm_mysql_database.examplea
}
