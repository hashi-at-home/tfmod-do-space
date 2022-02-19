# allowed_regions is a list of strings which contains valid digital ocean regions
variable "allowed_regions" {
  description = "List of valid regions"
  type        = list(string)
  sensitive   = false
  default     = ["fra1", "ams1", "ams2", "ams3"]
}

variable "selected_region" {
  description = "Selected region"
  type        = string
  sensitive   = false
  default     = "🇩🇪"

  validation {
    condition     = contains(["🇩🇪", "🇳🇱"], var.selected_region)
    error_message = "You gotta go boer or dutchman bru."
  }
}

locals {
  flag_map = {
    fra1 = "🇩🇪"
    ams3 = "🇳🇱"
  }
}

variable "bucket_name" {
  default     = "hashi-at-home-1"
  description = "Bucket name"
  type        = string
  sensitive   = false

}
