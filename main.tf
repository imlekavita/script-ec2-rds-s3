resource "aws_instance" "app_instance" {
  ami = "ami-00eb20669e0990cb4"

  instance_type = "t2.micro"
}