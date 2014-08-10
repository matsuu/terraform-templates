resource "aws_security_group" "baz" {
  name = "baz"
  description = "security group for baz"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = "${aws_vpc.baz.id}"
}

resource "aws_instance" "baz1" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = ["${aws_security_group.baz.id}"]
  subnet_id = "${aws_subnet.primary.id}"
  associate_public_ip_address = true
}

resource "aws_instance" "baz2" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  security_groups = ["${aws_security_group.baz.id}"]
  subnet_id = "${aws_subnet.secondary.id}"
  associate_public_ip_address = true
}
