locals {
  defaults = {
    variables = {}
  }

  input = {
    project_name = var.project_name
    variables    = try(var.variables, local.defaults.variables)
  }

  generated = {
    project_name = local.input.project_name
    variables    = local.input.variables
  }

  outputs = {
    project_name = local.generated.project_name
    variables    = local.generated.variables
  }
}

resource "gitlab_project_variable" "this" {
  project   = data.gitlab_project.this.id
  for_each  = local.outputs.variables
  key       = each.key
  value     = each.value
  protected = false
  masked    = false
}
