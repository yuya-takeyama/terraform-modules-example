resource "random_pet" "this" {
  count = var.cnt

  keepers = var.keepers
}
