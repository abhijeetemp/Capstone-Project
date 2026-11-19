terraform {
  required_version = ">= 1.0"
}

variable "project_name" {
  description = "Name of the infrastructure project"
  type        = string
  default     = "capstone-version-control"
}

output "project_name" {
  value = var.project_name
}

output "version_control_status" {
  value = "Infrastructure code tracked with Git"
}
