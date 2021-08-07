variable "cnt" {
  type        = number
  description = "Number of random pet resources."
}

variable "keepers" {
  type        = map(string)
  description = "Change this value to re-generate the pet name."
}
