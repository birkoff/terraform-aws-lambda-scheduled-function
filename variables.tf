variable "region" {
  type = "string"
}

variable "timeout" {
  type = "string"
}

variable "s3_lambda_bucket" {
  type = "string"
}

variable "s3_function_key" {
  type = "string"
}

variable "function_name" {
  type = "string"
}

variable "description" {
  type = "string"
}

variable "handler" {
  type = "string"
}

variable "runtime" {
  type = "string"
}

variable "event_schedule" {
  type = "string"
}

variable "lambda_role_arn" {
  type = "string"
}

variable "tags" {
  type = "map"
}

variable "env_vars" {
  type = "map"
}
