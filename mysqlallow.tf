resource "aws_security_group" "mysqlallow" {
  name = "mysqlallow"
  description = "ssh allow to the mysql"
  vpc_id	= "${aws_vpc.taskvpc.id}"

  ingress {
    description = "ssh"
    security_groups=[ "${aws_security_group.mybastion.id}" ]
    from_port = 22
    to_port	= 22
    protocol	= "tcp"
  }

  egress {
    from_port = 0
    to_port	= 0
    protocol	= "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mysqlallow"
  }
}
