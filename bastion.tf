resource "aws_security_group" "mybastion" {
  name = "mybastion"
  description = "Allow ssh for bastion"
  vpc_id	= "${aws_vpc.taskvpc.id}"

  ingress {
    description = "ssh"
    from_port = 22
    to_port	= 22
    protocol	= "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port	= 0
    protocol	= "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "mybastion"
  }
}
