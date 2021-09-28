<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | >=3.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | >=3.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_group_variable.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group_variable) | resource |
| [gitlab_group.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_path"></a> [path](#input\_path) | The full path of the group. | `string` | n/a | yes |
| <a name="input_variables"></a> [variables](#input\_variables) | Variables for group. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance"></a> [instance](#output\_instance) | output instance group |
| <a name="output_path"></a> [path](#output\_path) | output path group |
| <a name="output_variable"></a> [variable](#output\_variable) | output instance gitlab variables group |
| <a name="output_variables"></a> [variables](#output\_variables) | List of variables available. |
<!-- END_TF_DOCS -->