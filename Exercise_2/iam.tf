resource "aws_iam_role" "lambda_execution_role" {
  name               = var.lambda_role_name
  assume_role_policy = data.aws_iam_policy_document.lambda_trust_relationships.json
}

resource "aws_iam_policy" "lambda_policy" {
  name   = var.lambda_policy_name
  path   = "/"
  policy = data.aws_iam_policy_document.lambda_permission.json
}

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attachment" {
  role       = aws_iam_role.lambda_execution_role.name
  policy_arn = aws_iam_policy.lambda_policy.arn
}
