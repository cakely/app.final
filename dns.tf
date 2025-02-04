# Licensed under the Mozilla Public License 2.0
# See the included NOTICE in this project for license details
provider "cloudflare" {
  version   = "~> 2.0"
  email     = var.cloudflare_email
  api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "root" {
  zone_id = var.cloudflare_zone_id
  name    = var.domain_example
  value   = "www.${var.domain_example}"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "root_www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  value   = "www.${var.domain_example}.s3-website-us-west-2.amazonaws.com"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "github_verification" {
  zone_id = var.cloudflare_zone_id
  name    = "_github-challenge-cakely"
  value   = var.github_verification_code
  type    = "TXT"
}
