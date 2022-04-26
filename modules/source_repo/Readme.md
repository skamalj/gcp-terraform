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
| [google_sourcerepo_repository.source_repo](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sourcerepo_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_message_format"></a> [message\_format](#input\_message\_format) | n/a | `string` | `"JSON"` | no |
| <a name="input_service_account_email"></a> [service\_account\_email](#input\_service\_account\_email) | n/a | `string` | `null` | no |
| <a name="input_source_repo_name"></a> [source\_repo\_name](#input\_source\_repo\_name) | n/a | `string` | n/a | yes |
| <a name="input_topic_list"></a> [topic\_list](#input\_topic\_list) | n/a | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_source_repo"></a> [source\_repo](#output\_source\_repo) | n/a |
<!-- END_TF_DOCS -->