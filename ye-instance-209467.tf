resource "aws_instance" "ye_instancia_209467" {
  ami           = "ami-048f6ed62451373d9"
  instance_type = "t2.micro"
  key_name = "nuevaskeys"
  vpc_security_group_ids = [ aws_security_group.permitir_ssh.id ]
  subnet_id = aws_subnet.ye_subnet_209467.id

  tags = {
    Name = "ye_instancia_209467"
 }
}
