resource "aws_instance" "awsEC2KopsInstance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "Kops-Keypair"
  vpc_security_group_ids = ["sg-087b87c09faf36f43"]
  tags = {
    Name    = "bootstrap"
    Project = "awsKopsFleetman"
  }
}
output "PublicIP" {
  value = aws_instance.awsEC2KopsInstance.public_ip
}
