# test 27
module "r53_records" {
  source            = "../../modules/r53_records"
  domain_name       = local.domain_name
  non_alias_records = local.non_alias_records
  alias_records     = local.alias_records
}
