output "server" {
  value     = module.mysql.server
  sensitive = true
}

output "database" {
  value = module.mysql.database
}
