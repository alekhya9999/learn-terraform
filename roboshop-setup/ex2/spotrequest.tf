resource "aws_spot_instance_request" "spotrequest" {
  ami           = "ami-0a017d8ceb274537d"
  spot_price    = "0.03"
  instance_type = "t3.micro"

  tags = {
    Name = "spotrequest"
  }

}