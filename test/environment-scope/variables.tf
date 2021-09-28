# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these variables.
# ---------------------------------------------------------------------------------------------------------------------

# GITLAB_ACCESS_TOKEN

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED VARIABLES
# These variables must be set when using this module.
# ---------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL VARIABLES
# These variables have defaults, but may be overridden.
# ---------------------------------------------------------------------------------------------------------------------

variable "group_name" {
  type        = string
  description = "The full path of the group."
}

variable "project_name" {
  type        = string
  description = "The full path of the project."
}

variable "scope" {
  type        = string
  description = "scope of variables."
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
