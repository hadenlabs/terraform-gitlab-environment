output "project" {
  description = "output instance gitlab_project"
  value       = data.gitlab_project.this
}

output "instance" {
  description = "output instance gitlab_variable"
  value       = gitlab_project_variable.this
}

output "project_name" {
  description = "output path group"
  value       = local.outputs.project_name
}

output "variables" {
  value       = [for key in keys(local.outputs.variables) : key]
  description = "List of variables available."
}
