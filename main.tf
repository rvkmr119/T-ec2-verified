#data "aws_subnet" "available" {}
resource "aws_instance" "ec2" {
  ami = var.amitype
  key_name = "custom-KP"
  vpc_security_group_ids = ["sg-0fdc9c8c32c542bfd"]
  subnet_id = "${element(var.subs,count.index)}"
  associate_public_ip_address = true
  instance_type = var.i_type
  availability_zone = "${element(var.azs,count.index)}"
  count = 2
  tags = {
    Name = "${var.project}-${count.index}"
  }
  }
