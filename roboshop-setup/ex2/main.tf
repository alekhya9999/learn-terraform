data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}
resource "aws_instance" "frontend" {
  for_each = var.instances
  ami                    = data.aws_ami.ami.image_id

  instance_type          = each.value["type"]
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
    tags    = {
    Name  = each.value["Name"]
  }

}
variable "instances" {
  default = {
    catalogue = {
      Name = "catalogue"
      type = "t3.micro"
    }
    user = {
      Name = "user"
      type = "t3.small"
    }
    }
}