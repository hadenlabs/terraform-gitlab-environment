<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | >=3.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 3.7.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_main"></a> [main](#module\_main) | ../.. | n/a |
| <a name="module_project"></a> [project](#module\_project) | hadenlabs/project/gitlab | >=0.3.2 |

## Resources

| Name | Type |
|------|------|
| [gitlab_group.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | token gitlab | `string` | n/a | yes |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | The full path of the group. | `string` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The full path of the project. | `string` | n/a | yes |
| <a name="input_scope"></a> [scope](#input\_scope) | scope of variables. | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | The variables for project. | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance"></a> [instance](#output\_instance) | output instance module |
| <a name="output_project"></a> [project](#output\_project) | instance of the project. |
| <a name="output_variables"></a> [variables](#output\_variables) | output list keys of variables |
<!-- END_TF_DOCS -->