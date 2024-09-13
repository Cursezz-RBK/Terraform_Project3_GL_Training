resource "aws_db_subnet_group" "public" {
  name       = "jenkins_ninjas_public_subnet_group"
  subnet_ids = [aws_subnet.public.id, aws_subnet.public_b.id]  # Include both subnets

  tags = {
    Name = "Jenkins_Ninjas_Public_Subnet_Group"
  }
}