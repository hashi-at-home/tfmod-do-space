output "regions" {

  value = data.digitalocean_regions.available.regions[*].slug
}
