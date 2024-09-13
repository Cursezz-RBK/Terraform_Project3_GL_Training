resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-3a"

  tags = {
    Name = "Jenkins_Ninja_Public_Subnet_A"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-3b"

  tags = {
    Name = "Jenkins_Ninja_Public_Subnet_B"
  }
}