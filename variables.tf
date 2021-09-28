variable "path" {
  type        = string
  description = "The full path of the group."
}

variable "variables" {
  type        = map(any)
  description = "Variables for group."
  default     = {}
}
