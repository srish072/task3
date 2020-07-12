resource "aws_security_group" "mysql" {
  name = "mysql"
  description = "Allow sql"
  vpc_id	= "${aws_vpc.taskvpc.id}"

  ingress {
    description = "MYSQL"
    security_groups=[ "${aws_security_group.tasksg.id}" ]
    from_port = 3306
    to_port	= 3306
    protocol	= "tcp"
  }

  egress {
    from_port = 0
    to_port	= 0
    protocol	= "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
 
    Name = "mysql"
  }
}
