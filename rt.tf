resource "aws_route_table" "task-route-table" {
  vpc_id = "${aws_vpc.taskvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.task-internet-gateway.id}"
  }

  tags = {
    Name = "task-route-table"
  }
}
