terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.70.0"
    }
  }
}


# digital ocean bucket
resource "digitalocean_spaces_bucket" "bucket" {
  name = var.bucket_name
  # If it's dutch, choose one of AMS1/2/3, else choose Frankfurt
  region = lookup(local.flag_map, var.selected_region, "fra1")


  force_destroy = true

  versioning {
    enabled = true
  }
}
