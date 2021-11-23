resource "aws_instance" "vamsikrm-web" {
  ami           = "ami-04902260ca3d33422"
  instance_type = "t2.micro"
  key_name ="vamsi-lenevo-key"

  tags = {
    Name = "HelloWorld"
  }
}
