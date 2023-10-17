resource "aws_cloudwatch_log_group" "greet_log_group" {
  name = "/aws/lambda/${var.function_name}"
}