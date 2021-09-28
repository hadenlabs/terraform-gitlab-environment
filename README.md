 <!-- Space: TerraformGitlabEnvironment --> 
<!-- Title: Project --> 



<!--


  ** DO NOT EDIT THIS FILE
  **
  ** 1) Make all changes to `provision/generator/README.yaml`
  ** 2) Run`task readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **


  -->


 [![Latest Release](https://img.shields.io/github/release/hadenlabs/terraform-gitlab-environment)](https://github.com/hadenlabs/terraform-gitlab-environment/releases) [![Lint](https://img.shields.io/github/workflow/status/hadenlabs/terraform-gitlab-environment/lint-code)](https://github.com/hadenlabs/terraform-gitlab-environment/actions?workflow=lint-code) [![CI](https://img.shields.io/github/workflow/status/hadenlabs/terraform-gitlab-environment/ci)](https://github.com/hadenlabs/terraform-gitlab-environment/actions?workflow=ci) [![Test](https://img.shields.io/github/workflow/status/hadenlabs/terraform-gitlab-environment/test)](https://github.com/hadenlabs/terraform-gitlab-environment/actions?workflow=test) [![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow)](https://conventionalcommits.org) [![KeepAChangelog](https://img.shields.io/badge/Keep%20A%20Changelog-1.0.0-%23E05735)](https://keepachangelog.com)

# terraform-gitlab-environment




terraform-gitlab-environment for gitlab 











## Requirements


This is a list of plugins that need to be installed previously to enjoy all the goodies of this configuration:

- [Pyenv](https://github.com/pyenv/pyenv)
- [Docker](https://www.docker.com/)
- [python](https://www.python.org)
- [taskfile](https://github.com/go-task/task)





## Usage


```hcl
  module "main" {
    source  = "hadenlabs/environment/gitlab"
    version = "0.0.0"
    project_name = "organization/project"
    variables = {
      "key" = "value"
    }
  }

```

Full working examples can be found in [examples](./examples) folder.






## Examples

### common

```hcl

  module "main" {
    source  = "hadenlabs/environment/gitlab"
    version = "0.0.0"
  }
```



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





## Help

**Got a question?**

File a GitHub [issue](https://github.com/hadenlabs/terraform-gitlab-environment/issues).


## Contributing

### Bug Reports & Feature Requests


Please use the [issue tracker](https://github.com/hadenlabs/terraform-gitlab-environment/issues) to report any bugs or file feature requests.


### Development

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.

1.  **Fork** the repo on GitHub
2.  **Clone** the project to your own machine
3.  **Commit** changes to your own branch
4.  **Push** your work back up to your fork

5.  Submit a **Pull Request** so that we can review your changes



**NOTE:** Be sure to rebase the latest changes from "upstream" before making a pull request!


## Module Versioning

This Module follows the principles of [Semantic Versioning (SemVer)](https://semver.org/).

Using the given version number of `MAJOR.MINOR.PATCH`, we apply the following constructs:

1. Use the `MAJOR` version for incompatible changes.
1. Use the `MINOR` version when adding functionality in a backwards compatible manner.
1. Use the `PATCH` version when introducing backwards compatible bug fixes.

### Backwards compatibility in `0.0.z` and `0.y.z` version

- In the context of initial development, backwards compatibility in versions `0.0.z` is **not guaranteed** when `z` is
  increased. (Initial development)
- In the context of pre-release, backwards compatibility in versions `0.y.z` is **not guaranteed** when `y` is
  increased. (Pre-release)




## Copyright

Copyright © 2018-2021 [Hadenlabs](https://hadenlabs.com)



## Trademarks

All other trademarks referenced herein are the property of their respective owners.






## License

The code and styles are licensed under the LGPL-3.0 license [See project license.](LICENSE).



## Don't forget to 🌟 Star 🌟 the repo if you like terraform-gitlab-environment


[Your feedback is appreciated](https://github.com/hadenlabs/terraform-gitlab-environment/issues)

