resource "null_resource" "this" {
  count = var.cnt

  triggers = var.triggers
}
