resource "aws_security_group" "main" {
  name        = "${var.namespace}_aws_security_group_public"
  description = "${var.namespace}_aws_security_group_public"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name      = "${var.namespace}_aws_security_group_public"
    Namespace = "${var.namespace}"
  }
}
