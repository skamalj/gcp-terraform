<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | >= 4.00.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | >= 4.00.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google-beta_google_container_node_pool.node_pool](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_container_node_pool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_repair"></a> [auto\_repair](#input\_auto\_repair) | n/a | `bool` | `true` | no |
| <a name="input_auto_upgrade"></a> [auto\_upgrade](#input\_auto\_upgrade) | n/a | `bool` | `true` | no |
| <a name="input_cluster"></a> [cluster](#input\_cluster) | n/a | `any` | n/a | yes |
| <a name="input_create_pod_range"></a> [create\_pod\_range](#input\_create\_pod\_range) | n/a | `bool` | `false` | no |
| <a name="input_initial_node_count"></a> [initial\_node\_count](#input\_initial\_node\_count) | n/a | `number` | `1` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `string` | `"n2d-standard-2"` | no |
| <a name="input_max_node_count"></a> [max\_node\_count](#input\_max\_node\_count) | n/a | `number` | `1` | no |
| <a name="input_max_pods_per_node"></a> [max\_pods\_per\_node](#input\_max\_pods\_per\_node) | n/a | `number` | `30` | no |
| <a name="input_min_node_count"></a> [min\_node\_count](#input\_min\_node\_count) | n/a | `number` | `1` | no |
| <a name="input_node_locations"></a> [node\_locations](#input\_node\_locations) | n/a | `any` | `null` | no |
| <a name="input_node_pool_labels"></a> [node\_pool\_labels](#input\_node\_pool\_labels) | n/a | `any` | `null` | no |
| <a name="input_pod_ipv4_cidr_block"></a> [pod\_ipv4\_cidr\_block](#input\_pod\_ipv4\_cidr\_block) | n/a | `any` | `null` | no |
| <a name="input_pod_range"></a> [pod\_range](#input\_pod\_range) | n/a | `any` | `null` | no |
| <a name="input_pool_name_prefix"></a> [pool\_name\_prefix](#input\_pool\_name\_prefix) | n/a | `any` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_service_account"></a> [service\_account](#input\_service\_account) | n/a | `any` | `null` | no |
| <a name="input_upgrade_max_surge"></a> [upgrade\_max\_surge](#input\_upgrade\_max\_surge) | n/a | `number` | `1` | no |
| <a name="input_upgrade_max_unavailable"></a> [upgrade\_max\_unavailable](#input\_upgrade\_max\_unavailable) | n/a | `number` | `0` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->