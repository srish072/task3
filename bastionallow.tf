resource "aws_instance" "mybastion" {
  ami = "ami-052c08d70def0ac62"
  instance_type = "t2.micro"
  key_name	= "my-key"
  availability_zone = "ap-south-1a"
  subnet_id = "${aws_subnet.task-subnet-1a.id}"
  security_groups = [ "${aws_security_group.mybastion.id}" ]

  tags = {
    Name = "mybastion"
  }
}
