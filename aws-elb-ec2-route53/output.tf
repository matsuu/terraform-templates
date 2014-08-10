output "bar1_public_ip" {
  value = "${aws_instance.bar1.public_ip}"
}

output "bar1_public_dns" {
  value = "${aws_instance.bar1.public_dns}"
}

output "bar1_private_ip" {
  value = "${aws_instance.bar1.private_ip}"
}

output "bar1_private_dns" {
  value = "${aws_instance.bar1.private_dns}"
}

output "bar2_public_ip" {
  value = "${aws_instance.bar2.public_ip}"
}

output "bar2_public_dns" {
  value = "${aws_instance.bar2.public_dns}"
}

output "bar2_private_ip" {
  value = "${aws_instance.bar2.private_ip}"
}

output "bar2_private_dns" {
  value = "${aws_instance.bar2.private_dns}"
}
