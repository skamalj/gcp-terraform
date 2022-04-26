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
| [google-beta_google_container_cluster.gke_cluster](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_container_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_security_group"></a> [auth\_security\_group](#input\_auth\_security\_group) | n/a | `any` | `null` | no |
| <a name="input_autoscaling_profile"></a> [autoscaling\_profile](#input\_autoscaling\_profile) | n/a | `string` | `"BALANCED"` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `any` | n/a | yes |
| <a name="input_cluster_service_account"></a> [cluster\_service\_account](#input\_cluster\_service\_account) | n/a | `any` | n/a | yes |
| <a name="input_confidential_nodes_enabled"></a> [confidential\_nodes\_enabled](#input\_confidential\_nodes\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_db_encrypt_key_name"></a> [db\_encrypt\_key\_name](#input\_db\_encrypt\_key\_name) | n/a | `any` | `null` | no |
| <a name="input_default_max_pods_per_node"></a> [default\_max\_pods\_per\_node](#input\_default\_max\_pods\_per\_node) | n/a | `number` | `30` | no |
| <a name="input_default_snat_disabled"></a> [default\_snat\_disabled](#input\_default\_snat\_disabled) | n/a | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | n/a | `any` | `null` | no |
| <a name="input_enable_autopilot"></a> [enable\_autopilot](#input\_enable\_autopilot) | n/a | `string` | `"DISABLE"` | no |
| <a name="input_enable_binary_authorization"></a> [enable\_binary\_authorization](#input\_enable\_binary\_authorization) | n/a | `bool` | `true` | no |
| <a name="input_enable_l4_ilb_subsetting"></a> [enable\_l4\_ilb\_subsetting](#input\_enable\_l4\_ilb\_subsetting) | n/a | `bool` | `true` | no |
| <a name="input_enable_logging_components"></a> [enable\_logging\_components](#input\_enable\_logging\_components) | n/a | `list` | <pre>[<br>  "SYSTEM_COMPONENTS",<br>  "WORKLOADS"<br>]</pre> | no |
| <a name="input_enable_monitoring_components"></a> [enable\_monitoring\_components](#input\_enable\_monitoring\_components) | n/a | `list` | <pre>[<br>  "SYSTEM_COMPONENTS",<br>  "WORKLOADS"<br>]</pre> | no |
| <a name="input_enable_node_auto_provisioning"></a> [enable\_node\_auto\_provisioning](#input\_enable\_node\_auto\_provisioning) | Node Auto Provisioning | `bool` | `true` | no |
| <a name="input_enable_private_endpoint"></a> [enable\_private\_endpoint](#input\_enable\_private\_endpoint) | n/a | `bool` | `false` | no |
| <a name="input_enable_private_nodes"></a> [enable\_private\_nodes](#input\_enable\_private\_nodes) | n/a | `bool` | `true` | no |
| <a name="input_enable_shielded_nodes"></a> [enable\_shielded\_nodes](#input\_enable\_shielded\_nodes) | n/a | `bool` | `true` | no |
| <a name="input_gcp_filestore_csi_driver_config_enabled"></a> [gcp\_filestore\_csi\_driver\_config\_enabled](#input\_gcp\_filestore\_csi\_driver\_config\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_gcp_persistent_disk_csi_driver_config_enabled"></a> [gcp\_persistent\_disk\_csi\_driver\_config\_enabled](#input\_gcp\_persistent\_disk\_csi\_driver\_config\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_initial_node_count"></a> [initial\_node\_count](#input\_initial\_node\_count) | n/a | `number` | `1` | no |
| <a name="input_logging_service"></a> [logging\_service](#input\_logging\_service) | n/a | `string` | `"logging.googleapis.com/kubernetes"` | no |
| <a name="input_master_auth_cidr_block"></a> [master\_auth\_cidr\_block](#input\_master\_auth\_cidr\_block) | n/a | `list` | <pre>[<br>  {<br>    "cidr_block": "0.0.0.0/0",<br>    "name": "Public"<br>  }<br>]</pre> | no |
| <a name="input_master_cidr_block"></a> [master\_cidr\_block](#input\_master\_cidr\_block) | n/a | `any` | n/a | yes |
| <a name="input_master_global_access_config_enabled"></a> [master\_global\_access\_config\_enabled](#input\_master\_global\_access\_config\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_max_cpu_limit"></a> [max\_cpu\_limit](#input\_max\_cpu\_limit) | n/a | `string` | `"8"` | no |
| <a name="input_max_memory_limit"></a> [max\_memory\_limit](#input\_max\_memory\_limit) | n/a | `string` | `"32"` | no |
| <a name="input_min_cpu_limit"></a> [min\_cpu\_limit](#input\_min\_cpu\_limit) | n/a | `string` | `"0"` | no |
| <a name="input_min_memory_limit"></a> [min\_memory\_limit](#input\_min\_memory\_limit) | n/a | `string` | `"0"` | no |
| <a name="input_monitoring_service"></a> [monitoring\_service](#input\_monitoring\_service) | n/a | `string` | `"monitoring.googleapis.com/kubernetes"` | no |
| <a name="input_nap_image_type"></a> [nap\_image\_type](#input\_nap\_image\_type) | n/a | `string` | `"COS_CONTAINERD"` | no |
| <a name="input_nap_service_account"></a> [nap\_service\_account](#input\_nap\_service\_account) | n/a | `any` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | n/a | `any` | n/a | yes |
| <a name="input_network_policy_disabled"></a> [network\_policy\_disabled](#input\_network\_policy\_disabled) | n/a | `bool` | `false` | no |
| <a name="input_network_policy_enabled"></a> [network\_policy\_enabled](#input\_network\_policy\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_networking_mode"></a> [networking\_mode](#input\_networking\_mode) | n/a | `string` | `"VPC_NATIVE"` | no |
| <a name="input_node_locations"></a> [node\_locations](#input\_node\_locations) | n/a | `any` | `null` | no |
| <a name="input_pod_range_name"></a> [pod\_range\_name](#input\_pod\_range\_name) | n/a | `any` | n/a | yes |
| <a name="input_pod_security_policy_config_enabled"></a> [pod\_security\_policy\_config\_enabled](#input\_pod\_security\_policy\_config\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_release_channel"></a> [release\_channel](#input\_release\_channel) | n/a | `string` | `"REGULAR"` | no |
| <a name="input_remove_default_node_pool"></a> [remove\_default\_node\_pool](#input\_remove\_default\_node\_pool) | n/a | `bool` | `true` | no |
| <a name="input_remove_default_node_pool_name"></a> [remove\_default\_node\_pool\_name](#input\_remove\_default\_node\_pool\_name) | n/a | `bool` | `true` | no |
| <a name="input_service_range_name"></a> [service\_range\_name](#input\_service\_range\_name) | n/a | `any` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gke_cluster_host"></a> [gke\_cluster\_host](#output\_gke\_cluster\_host) | GKE Cluster Host |
| <a name="output_gke_cluster_id"></a> [gke\_cluster\_id](#output\_gke\_cluster\_id) | GKE Cluster Host |
<!-- END_TF_DOCS -->