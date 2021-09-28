variable "group_name" {
  type        = string
  description = "The full path of the group."
}

variable "project_name" {
  type        = string
  description = "The full path of the project."
}

variable "variables" {
  type        = map(any)
  description = "The variables for project."
}

# Gitlab token
variable "gitlab_token" {
  type        = string
  description = "token gitlab"
  sensitive   = true
}
