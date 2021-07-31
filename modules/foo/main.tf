resource "null_resource" "this" {
  count = var.count

  triggers = var.triggers
}
