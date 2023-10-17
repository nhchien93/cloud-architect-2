resource "aws_lambda_function" "greeting" {
  filename         = var.deployment_package
  function_name    = var.function_name
  role             = aws_iam_role.lambda_execution_role.arn
  handler          = "lambda.lambda_handler"
  source_code_hash = data.archive_file.deployment_package.output_base64sha256
  runtime          = "python3.7"
  depends_on = [
    aws_iam_role_policy_attachment.lambda_role_policy_attachment,
    aws_cloudwatch_log_group.greet_log_group,
  ]
  environment {
    variables = {
      greeting = "Hello"
    }
  }
}
