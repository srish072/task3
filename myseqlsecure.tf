resource "aws_instance" "srishmysql" {
  ami = "ami-052c08d70def0ac62"
  instance_type = "t2.micro"
  key_name	= "my-key"
  availability_zone = "ap-south-1b"
  subnet_id = "${aws_subnet.task-subnet-1b.id}"
  security_groups = [ "${aws_security_group.mysql.id}" , "${aws_security_group.mysqlallow.id}"]
  user_data = <<-EOF
	#! /bin/bash
 	sudo yum install @mysql -y
        systemctl start mysqld
 	systemctl enable mysqld

  EOF



  tags = {
    Name = "srishmysql"
  }
}
