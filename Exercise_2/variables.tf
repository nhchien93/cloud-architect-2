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

variable "lambda_policy_name" {
  description = "IAM policy name for Lambda"
  type        = string
  default     = "lambda_policy"
}

variable "lambda_role_name" {
  description = "IAM role name for lambda"
  type        = string
  default     = "lambda_execution_role"
}
