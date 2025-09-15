terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  content  = "Hello Terraform!"
  filename = "${path.module}/hello.txt"
}
