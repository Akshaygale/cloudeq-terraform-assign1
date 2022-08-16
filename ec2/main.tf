resource "aws_instance" "akshay_demo_instance" {
  ami           = var.ami1
  instance_type = "t2.micro"

  tags = {
    Name = "Demo training"
    owner="akshay"
  }
}



# Optional resource
resource "aws_ebs_volume" "akshay_volume" {
  count = var.check_status ? 1:0
  availability_zone = "us-east-1a"
  size              = var.demo_size

  tags = {
    Name = "HelloWorld"
    owner="akshay"
  }
}