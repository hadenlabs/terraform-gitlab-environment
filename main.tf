locals {
  defaults = {
    variables = {}
  }

  input = {
    path      = var.path
    variables = var.variables
  }

  generated = {
    path      = local.input.path
    variables = local.input.variables
  }

  outputs = {
    path      = local.generated.path
    variables = local.generated.variables
  }
}

resource "gitlab_group_variable" "this" {
  group     = data.gitlab_group.this.id
  for_each  = local.outputs.variables
  key       = each.key
  value     = each.value
  protected = false
  masked    = false
}
