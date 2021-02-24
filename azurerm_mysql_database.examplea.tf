resource "azurerm_mysql_database" "examplea" {
  name                = var.database_name
  resource_group_name = var.resource_group.name
  server_name         = azurerm_mysql_server.examplea.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
