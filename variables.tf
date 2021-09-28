variable "project_name" {
  type        = string
  description = "The name of project ex: namespace/repository"
}

variable "scope" {
  type        = string
  description = "The scope of variables"
  default     = "*"
}

variable "variables" {
  type        = map(any)
  description = "Variables for group."
  default     = {}
}
