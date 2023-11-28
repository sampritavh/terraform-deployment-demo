resource "aws_route53_zone" "hosted_zone" {
  name = var.domain_name
}

resource "aws_route53_record" "non_alias_records" {
  count = length(var.non_alias_records)

  zone_id = aws_route53_zone.hosted_zone.zone_id
  name    = var.non_alias_records[count.index].name
  records = var.non_alias_records[count.index].records
  ttl     = 300
  type    = var.non_alias_records[count.index].type
}

resource "aws_route53_record" "alias_records" {
  count   = length(var.alias_records)
  zone_id = aws_route53_zone.hosted_zone.zone_id
  name    = var.alias_records[count.index].name
  type    = "A"

  alias {
    name                   = var.alias_records[count.index].target.name
    zone_id                = var.alias_records[count.index].target.zone_id
    evaluate_target_health = false
  }
}
