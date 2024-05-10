locals {
  tags = {
    cost    = "shared"
    creator = "terraform"
    git     = var.git
  }
}

resource "random_string" "this" {
  length  = 7
  special = false
  upper   = false
  lower   = true
  numeric = true
}