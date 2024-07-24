locals {
  tags = {
    cost    = "shared"
    creator = "terraform"
    git     = var.git
  }
}

resource "random_string" "this" {
  count   = var.enabled ? 1 : 0
  length  = 7
  special = false
  upper   = false
  lower   = true
  numeric = true
}
