resource "aws_subnet" "task-subnet-1a" {
  vpc_id	= "${aws_vpc.taskvpc.id}"
  cidr_block = "192.168.0.0/24"
 
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
}
resource "aws_subnet" "task-subnet-1b" {
  vpc_id	= "${aws_vpc.taskvpc.id}"
  cidr_block = "192.168.1.0/24"
  availability_zone = "ap-south-1b"
}
