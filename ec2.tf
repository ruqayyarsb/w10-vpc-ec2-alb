resource "aws_instance" "server1" {
  ami                    = "ami-0c1e21d82fe9c9336"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg-demo.id]
  availability_zone      = "us-east-1a"
  subnet_id              = aws_subnet.private1.id
  user_data              = file("setup.sh")
  tags = {
    Name = "webserver-1"
  }

}
resource "aws_instance" "server2" {
  ami                    = "ami-0c1e21d82fe9c9336"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
  availability_zone      = "us-east-1b"
  subnet_id              = aws_subnet.private2.id
  user_data              = file("setup.sh")
  tags = {
    Name = "webserver-2"
  }

}