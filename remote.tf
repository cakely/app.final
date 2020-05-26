# Licensed under the Mozilla Public License 2.0
# See the included NOTICE in this project for license details
# Terraform remote backend configuration.
# You need a Terraform cloud account to use the Terraform cloud remote backend.
# Follow the instructions here to sign up and get started
# with Terraform cloud: https://www.terraform.io/docs/cloud/index.html
# You can comment this code out when you have an account.
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "cakely"

    workspaces {
      name = "app"
    }
  }
}
