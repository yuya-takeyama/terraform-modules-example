variable "count" {
  type        = number
  description = "Number of null resources"
}

variable "triggers" {
  type        = map(string)
  description = "Change this value to trigger re-provisioning"
}
