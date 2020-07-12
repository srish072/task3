resource "aws_eip" "task-eip" {
  vpc = true

 
  associate_with_private_ip = "10.0.0.12"
}

resource "aws_nat_gateway" "task-nat-gateway" {
  allocation_id = "${aws_eip.task-eip.id}"
  subnet_id	= "${aws_subnet.task-subnet-1b.id}"

  tags = {
    Name = "task-nat-gateway"
  }
}

resource "aws_route_table" "task-route-table2" {
  vpc_id = "${aws_vpc.taskvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.task-nat-gateway.id}"
  }
}
