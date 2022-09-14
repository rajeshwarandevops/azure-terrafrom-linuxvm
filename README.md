<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.webvm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |
| [azurerm_network_interface.webvm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_public_ip.web-vm-pip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_resource_group.rg-rk-terraform](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_subnet.snet-web](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet-main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefixes"></a> [address\_prefixes](#input\_address\_prefixes) | n/a | `list(any)` | <pre>[<br>  "10.0.0.0/24"<br>]</pre> | no |
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | network Vars | `list(any)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_allocation_method"></a> [allocation\_method](#input\_allocation\_method) | n/a | `string` | `"Static"` | no |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | n/a | `string` | `"Dynamic"` | no |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | n/a | `string` | `"Dynamic"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"uaenorth"` | no |
| <a name="input_nicname"></a> [nicname](#input\_nicname) | n/a | `string` | `"webvm01-nic"` | no |
| <a name="input_offer"></a> [offer](#input\_offer) | n/a | `string` | `"UbuntuServer"` | no |
| <a name="input_os_version"></a> [os\_version](#input\_os\_version) | n/a | `string` | `"latest"` | no |
| <a name="input_private_ip_address_allocation"></a> [private\_ip\_address\_allocation](#input\_private\_ip\_address\_allocation) | n/a | `string` | `"Dynamic"` | no |
| <a name="input_publisher"></a> [publisher](#input\_publisher) | n/a | `string` | `"Canonical"` | no |
| <a name="input_rgname"></a> [rgname](#input\_rgname) | n/a | `string` | `"rajeshdevops-terraform"` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | n/a | `string` | `"18.04-LTS"` | no |
| <a name="input_snetname"></a> [snetname](#input\_snetname) | n/a | `string` | `"snet-web"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | `"Dynamic"` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | `"Dynamic"` | no |
| <a name="input_vm-pip-name"></a> [vm-pip-name](#input\_vm-pip-name) | n/a | `string` | `"web-vm-pip"` | no |
| <a name="input_vmname"></a> [vmname](#input\_vmname) | n/a | `string` | `"webvm01"` | no |
| <a name="input_vmsize"></a> [vmsize](#input\_vmsize) | n/a | `string` | `"Standard_B1s"` | no |
| <a name="input_vmusername"></a> [vmusername](#input\_vmusername) | n/a | `string` | `"admin"` | no |
| <a name="input_vnetname"></a> [vnetname](#input\_vnetname) | network Vars | `string` | `"vnet-main"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_webvmname"></a> [webvmname](#output\_webvmname) | name of the webvm |
| <a name="output_webvmnicname"></a> [webvmnicname](#output\_webvmnicname) | name of the webvm -nic |
| <a name="output_webvmpip"></a> [webvmpip](#output\_webvmpip) | output webvm puplic ip |
<!-- END_TF_DOCS -->