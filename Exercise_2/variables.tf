variable "function_name" {
  description = "Lambda function name"
  type        = string
  default     = "greeting"
}

variable "src" {
  description = "Lambda source path"
  type        = string
  default     = "lambda.py"
}

variable "deployment_package" {
  description = "Lambda deployment package path"
  type        = string
  default     = "deployment_package.zip"
}
