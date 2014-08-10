output "baz1_public_ip" {
  value = "${aws_instance.baz1.public_ip}"
}

output "baz1_public_dns" {
  value = "${aws_instance.baz1.public_dns}"
}

output "baz1_private_ip" {
  value = "${aws_instance.baz1.private_ip}"
}

output "baz1_private_dns" {
  value = "${aws_instance.baz1.private_dns}"
}

output "baz2_public_ip" {
  value = "${aws_instance.baz2.public_ip}"
}

output "baz2_public_dns" {
  value = "${aws_instance.baz2.public_dns}"
}

output "baz2_private_ip" {
  value = "${aws_instance.baz2.private_ip}"
}

output "baz2_private_dns" {
  value = "${aws_instance.baz2.private_dns}"
}
