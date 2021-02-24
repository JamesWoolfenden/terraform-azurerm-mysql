resource "azurerm_mysql_server" "examplea" {
  name                = var.mysqlserver_name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name

  administrator_login          = var.admin_name
  administrator_login_password = var.password

  //sku must not be basic as doesnt support encryption so this cannot start with a B
  sku_name = var.sku_name
  //must be between 5120 nd 4194304
  storage_mb = var.storage_mb
  version    = var.server_version

  auto_grow_enabled            = true
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  //all these items for check
  //defaults to false
  infrastructure_encryption_enabled = false
  //defaults to true
  public_network_access_enabled = false
  //required
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"

  identity {
    type = "SystemAssigned"
  }

  //threat policy  also a valid check
  threat_detection_policy {
    enabled              = true
    disabled_alerts      = []
    email_account_admins = true
    email_addresses      = var.email_addresses
    //check on retention days
    retention_days = 14
  }
  tags = var.common_tags
}

variable "password" {
  sensitive = true
}

variable "admin_name" {
  default = "mysqladminun"
}
