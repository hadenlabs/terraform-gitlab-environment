output "instance" {
  description = "output instance group"
  value       = data.gitlab_group.this
}

output "path" {
  description = "output path group"
  value       = local.outputs.path
}

output "variable" {
  description = "output instance gitlab variables group"
  value       = gitlab_group_variable.this
}

output "variables" {
  value       = [for variable in gitlab_group_variable.this : variable.key]
  description = "List of variables available."
}
