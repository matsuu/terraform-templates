resource "aws_route53_zone" "baz" {
  name = "baz.example.org"
}

resource "aws_route53_record" "baz1" {
  zone_id = "${aws_route53_zone.baz.zone_id}"
  name = "baz1.baz.example.org"
  type = "A"
  ttl = "300"
  records = ["${aws_instance.baz1.public_ip}"]
}

resource "aws_route53_record" "baz2" {
  zone_id = "${aws_route53_zone.baz.zone_id}"
  name = "baz2.baz.example.org"
  type = "A"
  ttl = "300"
  records = ["${aws_instance.baz2.public_ip}"]
}
