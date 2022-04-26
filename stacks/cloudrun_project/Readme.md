<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 3.88.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google-beta"></a> [google-beta](#provider\_google-beta) | 3.88.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudbuild_sa"></a> [cloudbuild\_sa](#module\_cloudbuild\_sa) | ../../modules/service_account | n/a |
| <a name="module_cloudrun_nat"></a> [cloudrun\_nat](#module\_cloudrun\_nat) | ../../modules/cloud_nat | n/a |
| <a name="module_cloudrun_router"></a> [cloudrun\_router](#module\_cloudrun\_router) | ../../modules/cloud_router | n/a |
| <a name="module_cloudrun_sa"></a> [cloudrun\_sa](#module\_cloudrun\_sa) | ../../modules/service_account | n/a |
| <a name="module_cloudrun_subnet"></a> [cloudrun\_subnet](#module\_cloudrun\_subnet) | ../../modules/subnetwork | n/a |
| <a name="module_customer_build_trigger"></a> [customer\_build\_trigger](#module\_customer\_build\_trigger) | ../../modules/cloudbuild_trigger | n/a |
| <a name="module_customer_repo"></a> [customer\_repo](#module\_customer\_repo) | ../../modules/source_repo | n/a |
| <a name="module_demo_app_registry"></a> [demo\_app\_registry](#module\_demo\_app\_registry) | ../../modules/artifact_registry | n/a |

## Resources

| Name | Type |
|------|------|
| [google-beta_google_vpc_access_connector.connector](https://registry.terraform.io/providers/hashicorp/google-beta/latest/docs/resources/google_vpc_access_connector) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"asia-south1"` | no |
| <a name="input_roles"></a> [roles](#input\_roles) | n/a | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_demo_app_registry_id"></a> [demo\_app\_registry\_id](#output\_demo\_app\_registry\_id) | n/a |
| <a name="output_source_repo_url"></a> [source\_repo\_url](#output\_source\_repo\_url) | n/a |
<!-- END_TF_DOCS -->