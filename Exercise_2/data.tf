data "archive_file" "deployment_package" {
  type        = "zip"
  source_file = var.src
  output_path = var.deployment_package
}
