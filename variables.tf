variable "project_name" {
  type        = string
  description = "The name of project ex: namespace/repository"
}

variable "variables" {
  type        = map(any)
  description = "Variables for group."
  default     = {}
}
