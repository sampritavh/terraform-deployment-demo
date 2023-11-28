# ---------------------------------------------------------------------------------------------------------------------
# Variables
# ---------------------------------------------------------------------------------------------------------------------
variable "domain_name" {
  type        = string
  description = "domain_name for the hosted zone"
}

variable "non_alias_records" {
  type = list(object({
    name    = string
    records = list(string)
    type    = string
    }
  ))
  description = "List of A and CNAME records"
  default     = []
}



variable "alias_records" {
  type = list(object({
    name = string
    target = object({
      name    = string
      zone_id = string
    })
    }
  ))
  description = "List of alias records"
  default     = []
}
