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
| [gitlab_project_variable.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project_variable) | resource |
| [gitlab_project.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of project ex: namespace/repository | `string` | n/a | yes |
| <a name="input_scope"></a> [scope](#input\_scope) | The scope of variables | `string` | `"*"` | no |
| <a name="input_variables"></a> [variables](#input\_variables) | Variables for group. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance"></a> [instance](#output\_instance) | output instance gitlab\_variable |
| <a name="output_project"></a> [project](#output\_project) | output instance gitlab\_project |
| <a name="output_project_name"></a> [project\_name](#output\_project\_name) | output project name |
| <a name="output_scope"></a> [scope](#output\_scope) | output scope |
| <a name="output_variables"></a> [variables](#output\_variables) | List of variables available. |
<!-- END_TF_DOCS -->