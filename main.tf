# main.tf
terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {
  # Configuration options
}

locals {
  my_value = "Hello, Terraform Cloud!"
}

resource "null_resource" "echo_value" {
  provisioner "local-exec" {
    command = "echo ${local.my_value}"
  }
}

output "output_value" {
  value = local.my_value
}
