<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | 2.17.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.17.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_spaces_bucket.bucket](https://registry.terraform.io/providers/digitalocean/digitalocean/2.17.1/docs/resources/spaces_bucket) | resource |
| [digitalocean_regions.available](https://registry.terraform.io/providers/digitalocean/digitalocean/2.17.1/docs/data-sources/regions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_regions"></a> [allowed\_regions](#input\_allowed\_regions) | List of valid regions | `list(string)` | <pre>[<br>  "fra1",<br>  "ams1",<br>  "ams2",<br>  "ams3"<br>]</pre> | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Bucket name | `string` | `"hashi-at-home-1"` | no |
| <a name="input_selected_region"></a> [selected\_region](#input\_selected\_region) | Selected region | `string` | `"🇩🇪"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_regions"></a> [regions](#output\_regions) | n/a |
<!-- END_TF_DOCS -->