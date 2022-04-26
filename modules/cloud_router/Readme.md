<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 3.88.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | >= 3.88.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_advertise_mode"></a> [advertise\_mode](#input\_advertise\_mode) | DEFAULT or CUSTOM | `string` | `"DEFAULT"` | no |
| <a name="input_advertised_groups"></a> [advertised\_groups](#input\_advertised\_groups) | n/a | `list(string)` | <pre>[<br>  "ALL_SUBNETS"<br>]</pre> | no |
| <a name="input_advertised_ip_ranges"></a> [advertised\_ip\_ranges](#input\_advertised\_ip\_ranges) | n/a | <pre>list(object({<br>      range = string<br>      description = optional(string)<br>  }))</pre> | `[]` | no |
| <a name="input_asn"></a> [asn](#input\_asn) | n/a | `string` | `"64512"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_router"></a> [router](#output\_router) | Router object |
<!-- END_TF_DOCS -->