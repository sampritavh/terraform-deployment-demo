module "r53_records" {
  source            = "../../modules/r53_records"
  domain_name       = locals.domain_name
  non_alias_records = locals.non_alias_records
  alias_records     = locals.alias_records
}
