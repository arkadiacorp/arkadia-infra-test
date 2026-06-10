resource "aws_route53_zone" "main" {
  name = "exemplo-arkadia-test.com"
}

resource "aws_route53_record" "dmarc" {
  zone_id = aws_route53_zone.main.zone_id
  name    = "_dmarc.exemplo-arkadia-test.com"
  type    = "TXT"
  ttl     = 300
  records = ["v=DMARC1; p=none"]
}
