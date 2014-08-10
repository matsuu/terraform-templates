resource "aws_vpc" "baz" {
  cidr_block = "${var.vpc_cidr_block}"
}

resource "aws_subnet" "primary" {
  vpc_id = "${aws_vpc.baz.id}"
  availability_zone = "${var.availability_zone.primary}"
  cidr_block = "${var.subnet_cidr_block.primary}"
}

resource "aws_subnet" "secondary" {
  vpc_id = "${aws_vpc.baz.id}"
  availability_zone = "${var.availability_zone.secondary}"
  cidr_block = "${var.subnet_cidr_block.secondary}"
}

resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.baz.id}"
}

resource "aws_route_table" "default" {
  vpc_id = "${aws_vpc.baz.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "primary" {
  subnet_id = "${aws_subnet.primary.id}"
  route_table_id = "${aws_route_table.default.id}"
}

resource "aws_route_table_association" "secondary" {
  subnet_id = "${aws_subnet.secondary.id}"
  route_table_id = "${aws_route_table.default.id}"
}
