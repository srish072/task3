resource "aws_route_table_association" "a" {
  subnet_id	= aws_subnet.task-subnet-1a.id
  route_table_id = "${aws_route_table.task-route-table.id}"
}
