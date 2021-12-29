resource "aws_instance" "linux-instance" {
  ami           = "ami-0b095f5954d2592ad"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.lesson12-subnet-public-3.id

  vpc_security_group_ids = [aws_security_group.lesson12-all.id]

  key_name = "Terra"

  tags = {
    "Name" = "linux-instance"
  }

  depends_on = [
    aws_db_instance.lesson12-rds,
  ]
}