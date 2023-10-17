data "archive_file" "deployment_package" {
  type        = "zip"
  source_file = var.src
  output_path = var.deployment_package
}

data "aws_iam_policy_document" "lambda_trust_relationships" {
  statement {
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
    actions = ["sts:AssumeRole"]
  }
}

data "aws_iam_policy_document" "lambda_permission" {
  statement {
    effect = "Allow"
    actions = [
      "logs:*"
    ]
    resources = ["*"]
  }
}
