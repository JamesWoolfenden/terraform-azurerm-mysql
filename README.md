# terraform-azurerm-mysql

[![Build Status](https://github.com/JamesWoolfenden/terraform-azurerm-mysql/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-azurerm-mysql)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-azurerm-mysql.svg)](https://github.com/JamesWoolfenden/terraform-azurerm-mysql/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-azurerm-mysql.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-azurerm-mysql/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-azurerm-mysql/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-mysql&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-azurerm-mysql/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-azurerm-mysql&benchmark=INFRASTRUCTURE+SECURITY)

This is module to help you deploy SQL ON AZURE.

## Usage

Add **module.mysql.tf** to your Terraform code:

```terraform
module "sql" {
  source         = "JamesWoolfenden/mysql/azure"
  version        = "0.0.2"
  resource_group = azurerm_resource_group.examplea
  database_name  = "mydatabase"
}
```

Supply values for your resource and database name, other values have defaults which can be over ridden.

---

This project is 100% Open Source and licensed under the [APACHE2](LICENSE).

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [azurerm_mysql_database](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_database) |
| [azurerm_mysql_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mysql_server) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_replication\_type | n/a | `string` | `"LRS"` | no |
| account\_tier | n/a | `string` | `"Standard"` | no |
| admin\_name | n/a | `string` | `"mysqladminun"` | no |
| auditstore | n/a | `string` | `"exampleaaudit"` | no |
| common\_tags | This is to help you add tags to your cloud objects | `map(any)` | n/a | yes |
| database\_name | n/a | `string` | `"exampleadatabase"` | no |
| email\_addresses | n/a | `list` | `[]` | no |
| mysqlserver\_name | n/a | `string` | n/a | yes |
| password | n/a | `any` | n/a | yes |
| resource\_group | To supply an Azure resource group object | `any` | n/a | yes |
| server\_version | n/a | `string` | `"5.7"` | no |
| sku\_name | n/a | `string` | `"GP_Gen5_2"` | no |
| storage\_mb | n/a | `number` | `5120` | no |

## Outputs

| Name | Description |
|------|-------------|
| database | n/a |
| server | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

## References

For additional context, refer to some of these links.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-azurerm-mysql/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-azurerm-mysql/issues) to report any bugs or file feature requests.

## Copyrights

Copyright 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-azurerm-mysql&url=https://github.com/JamesWoolfenden/terraform-azurerm-mysql
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-azurerm-mysql&url=https://github.com/JamesWoolfenden/terraform-azurerm-mysql
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-azurerm-mysql
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-azurerm-mysql
[share_email]: mailto:?subject=terraform-azurerm-mysql&body=https://github.com/JamesWoolfenden/terraform-azurerm-mysql
