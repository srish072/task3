resource "aws_internet_gateway" "task-internet-gateway" {
  vpc_id = "${aws_vpc.taskvpc.id}"

  tags = {
    Name = "task-internet-gateway"
 
  }
}
