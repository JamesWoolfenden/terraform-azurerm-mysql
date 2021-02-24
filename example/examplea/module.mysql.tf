module "mysql" {
  source           = "../../"
  common_tags      = var.common_tags
  resource_group   = azurerm_resource_group.examplea
  mysqlserver_name = "examplea-mysqlserver"
  password         = "H@Sh1CoR3!"
}
