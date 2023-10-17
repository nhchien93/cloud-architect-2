output "lambda_function" {
  value = aws_lambda_function.greeting.arn
}

output "greet_log_group" {
  value = aws_cloudwatch_log_group.greet_log_group.arn
}