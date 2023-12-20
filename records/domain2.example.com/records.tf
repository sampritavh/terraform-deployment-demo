# variables 3
locals {
  domain_name = "domain2.example.com"
  non_alias_records = [
    {
      name    = "test1"
      records = ["172.234.201.150", "172.235.201.151", "172.234.201.152"]
      type    = "A"
    },
    {
      name    = "test2"
      records = ["172.234.201.254", "172.234.201.155", "172.234.201.156"]
      type    = "A"
    },

  ]
  alias_records = [
    {
      name = "testing-alias1"
      target = {
        name    = "vpce-1234567-blasorwk.vpce-svc-00faa0aad44448859.us-east-1.vpce.amazonaws.com."
        zone_id = "Z2E726K9Y6RL4W"
      }
    }
  ]
}
