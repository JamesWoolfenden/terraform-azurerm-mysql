variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "mysqlserver_name" {
  type        = string
  description = ""
}

variable "sku_name" {
  type    = string
  default = "GP_Gen5_2"
}

variable "storage_mb" {
  type    = number
  default = 5120
}

variable "server_version" {
  type    = string
  default = "5.7"
  validation {
    condition     = can(regex("5.6|5.7|8.0", var.server_version))
    error_message = "Version must be one of 5.6 5.7 8.0."
  }
}

variable "resource_group" {
  description = "To supply an Azure resource group object"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "auditstore" {
  default = "exampleaaudit"
}

variable "email_addresses" {
  default = []
}

variable "database_name" {
  default = "exampleadatabase"
}
