<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.1.7 |
| <a name="requirement_google"></a> [google](#requirement\_google) | >= 4.00.0 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | 4.17.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gke-pool-1"></a> [gke-pool-1](#module\_gke-pool-1) | ../../modules/gke-nodepool | n/a |
| <a name="module_gke-pool-2"></a> [gke-pool-2](#module\_gke-pool-2) | ../../modules/gke-nodepool | n/a |
| <a name="module_gke_cluster"></a> [gke\_cluster](#module\_gke\_cluster) | ../../modules/gke | n/a |
| <a name="module_gke_ilb_subnet"></a> [gke\_ilb\_subnet](#module\_gke\_ilb\_subnet) | ../../modules/subnetwork | n/a |
| <a name="module_gke_nat"></a> [gke\_nat](#module\_gke\_nat) | ../../modules/cloud_nat | n/a |
| <a name="module_gke_network"></a> [gke\_network](#module\_gke\_network) | ../../modules/vpc | n/a |
| <a name="module_gke_proxy_subnet"></a> [gke\_proxy\_subnet](#module\_gke\_proxy\_subnet) | ../../modules/subnetwork | n/a |
| <a name="module_gke_router"></a> [gke\_router](#module\_gke\_router) | ../../modules/cloud_router | n/a |
| <a name="module_gke_serviceaccount"></a> [gke\_serviceaccount](#module\_gke\_serviceaccount) | ../../modules/service_account | n/a |
| <a name="module_gke_subnet"></a> [gke\_subnet](#module\_gke\_subnet) | ../../modules/subnetwork | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | GKE Cluster configuration | `any` | n/a | yes |
| <a name="input_credentials_file"></a> [credentials\_file](#input\_credentials\_file) | n/a | `any` | n/a | yes |
| <a name="input_enable_autopilot"></a> [enable\_autopilot](#input\_enable\_autopilot) | n/a | `string` | `"ENABLE"` | no |
| <a name="input_enable_node_auto_provisioning"></a> [enable\_node\_auto\_provisioning](#input\_enable\_node\_auto\_provisioning) | n/a | `bool` | `false` | no |
| <a name="input_enable_private_endpoint"></a> [enable\_private\_endpoint](#input\_enable\_private\_endpoint) | n/a | `bool` | `false` | no |
| <a name="input_ilb_subnet_cidr_range"></a> [ilb\_subnet\_cidr\_range](#input\_ilb\_subnet\_cidr\_range) | n/a | `any` | n/a | yes |
| <a name="input_ilb_subnet_name"></a> [ilb\_subnet\_name](#input\_ilb\_subnet\_name) | n/a | `any` | n/a | yes |
| <a name="input_master_auth_cidr_block"></a> [master\_auth\_cidr\_block](#input\_master\_auth\_cidr\_block) | n/a | `any` | `null` | no |
| <a name="input_master_cidr_block"></a> [master\_cidr\_block](#input\_master\_cidr\_block) | n/a | `any` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Network Configuration | `any` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `any` | n/a | yes |
| <a name="input_proxy_subnet_cidr_range"></a> [proxy\_subnet\_cidr\_range](#input\_proxy\_subnet\_cidr\_range) | n/a | `any` | n/a | yes |
| <a name="input_proxy_subnet_name"></a> [proxy\_subnet\_name](#input\_proxy\_subnet\_name) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Project Configuration | `any` | n/a | yes |
| <a name="input_secondary_ranges"></a> [secondary\_ranges](#input\_secondary\_ranges) | n/a | <pre>list(object({<br>        range_name = string<br>        ip_cidr_range = string<br>    }))</pre> | n/a | yes |
| <a name="input_subnet_cidr_range"></a> [subnet\_cidr\_range](#input\_subnet\_cidr\_range) | n/a | `any` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | n/a | `any` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gke_cluster_host"></a> [gke\_cluster\_host](#output\_gke\_cluster\_host) | GKE Cluster Host |
<!-- END_TF_DOCS -->