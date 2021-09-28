locals {
  defaults = {
    variables = {}
    scope     = "*"
  }

  input = {
    project_name = var.project_name
    scope        = try(var.scope, local.defaults.scope)
    variables    = try(var.variables, local.defaults.variables)
  }

  generated = {
    project_name = local.input.project_name
    scope        = local.input.scope
    variables    = local.input.variables
  }

  outputs = {
    project_name = local.generated.project_name
    scope        = local.generated.scope
    variables    = local.generated.variables
  }
}

resource "gitlab_project_variable" "this" {
  project           = data.gitlab_project.this.id
  environment_scope = local.outputs.scope
  for_each          = local.outputs.variables
  key               = each.key
  value             = each.value
  protected         = false
  masked            = false
}
