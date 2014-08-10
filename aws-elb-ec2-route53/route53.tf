resource "aws_route53_zone" "bar" {
  name = "bar.example.org"
}

resource "aws_route53_record" "bar1" {
  zone_id = "${aws_route53_zone.bar.zone_id}"
  name = "bar1.bar.example.org"
  type = "CNAME"
  ttl = "300"
  records = ["${aws_instance.bar1.public_dns}"]
}

resource "aws_route53_record" "bar2" {
  zone_id = "${aws_route53_zone.bar.zone_id}"
  name = "bar2.bar.example.org"
  type = "CNAME"
  ttl = "300"
  records = ["${aws_instance.bar2.public_dns}"]
}

resource "aws_route53_record" "www" {
  zone_id = "${aws_route53_zone.bar.zone_id}"
  name = "www.bar.example.org"
  type = "CNAME"
  ttl = "300"
  records = ["${aws_elb.bar.dns_name}"]
}
