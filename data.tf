data "digitalocean_regions" "available" {
  filter {
    key    = "available"
    values = ["true"]
  }

  filter {
    key    = "features"
    values = ["private_networking", "storage"]
  }

  filter {
    key    = "slug"
    values = var.allowed_regions
  }

  sort {
    key       = "name"
    direction = "asc"
  }
}
