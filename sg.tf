resource "aws_security_group" "tasksg" {
  description = "Allow ssh http and icmp"
  vpc_id	= "${aws_vpc.taskvpc.id}"

  ingress {
    description = "http"
    from_port = 80
    to_port	= 80
    protocol	= "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 
  ingress {
    description = "ssh"
    from_port = 22
    to_port	= 22
    protocol	= "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  } 
   ingress {
 
    description = "ICMP-IPv4"
    from_port = 0
    to_port	= 0
    protocol	= "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port	= 0
    protocol	= "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "tasksg"
  }
}
