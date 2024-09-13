resource "aws_instance" "web" {
  ami           = "ami-0a07ff89aacad043e" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "Jenkins_Ninja_EC2"
  }
}