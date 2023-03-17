resource "aws_route53_record" "record" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "${var.component}-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}
variable "private_ip" {}