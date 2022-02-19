terraform {
  # use terraform cloud as backend
  # backend "consul" {
  #   path =
  # }
  # require vault and digitalocean providers
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.17.1"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.3.0"
    }
    consul = {
      source  = "hashicorp/consul"
      version = "2.14.0"
    }
  }
}

data "vault_generic_secret" "do_token" {
  path = "kv/do"
}
provider "digitalocean" {
  token             = data.vault_generic_secret.do_token.data["token"]
  spaces_access_id  = data.vault_generic_secret.do_token.data["access_key_hashi_at_home"]
  spaces_secret_key = data.vault_generic_secret.do_token.data["secret_key_hashi_at_home"]
}

module "bucket" {
  source          = "../../"
  selected_region = "🇳🇱"
}

output "regions" {
  value = module.bucket.regions
}
