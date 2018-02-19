variable "region" {
  type = "string"
  description = "AWS Region to deplpy the function"
}

variable "timeout" {
  type = "string"
  description = "Execution timeout"
}

variable "s3_lambda_bucket" {
  type = "string"
  description = "S3 Bucket where the code is stored"
}

variable "s3_function_key" {
  type = "string"
  description = "S3 key where the code is stored"
}

variable "function_name" {
  type = "string"
  description = "Lambda Function Name"
}

variable "description" {
  type = "string"
  description = "Lambda Function Description"
}

variable "handler" {
  type = "string"
  description = "Lambda Halndler"
}

variable "runtime" {
  type = "string"
  description = "Runtime Engine"
}

variable "event_schedule" {
  type = "string"
  description = "Cron - Schedule"
}

variable "lambda_role_arn" {
  type = "string"
  description = "Role Permission to execute lambda"
}

variable "tags" {
  type = "map"
  description = "Tags to apply to lambda function"
}

variable "env_vars" {
  type = "map"
  description = "Environment variables to apply to the lambda function"
}
