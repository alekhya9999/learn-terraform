resource "aws_instance" "frontend" {
  ami                    = "ami-0a017d8ceb274537d"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "frontend-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}
resource "aws_instance" "cart" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "cart"
  }
}
resource "aws_route53_record" "cart" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "cart-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}
resource "aws_instance" "catalogue" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "catalogue"
  }
}
resource "aws_route53_record" "catalogue" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "catalogue-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}
resource "aws_instance" "user" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "user"
  }
}
resource "aws_route53_record" "user" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "user-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "shipping" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "shipping-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}
resource "aws_instance" "payment" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "payment"
  }
}
resource "aws_route53_record" "payment" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "payment-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}
resource "aws_instance" "mongodb" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "mongodb-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}
resource "aws_instance" "rabbitmq" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "rabbitmq"
  }
}
resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "rabbitmq-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}
resource "aws_instance" "mysql" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "mysql"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "mysql-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}
resource "aws_instance" "redis" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "redis"
  }
}
resource "aws_route53_record" "redis" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "redis-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}
resource "aws_instance" "dispatch" {
  ami = "ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a6f9986a7f6c10cd"]
  tags = {
    Name = "dispatch"
  }

}
resource "aws_route53_record" "dispatch" {
  zone_id = "Z0842500299XCGXBYVP8R"
  name    = "dispatch-dev.ambatis.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}

output "rabbitmq" {
  value = aws_instance.rabbitmq.public_ip
}