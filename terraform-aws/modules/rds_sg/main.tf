resource "aws_security_group" "rds_sg" {
    name = "${var.name}-${var.environment}-rds"
    description = "Security Group ${var.name}-${var.environment}"
    vpc_id = "${var.vpc_id}"
    tags {
      Name = "${var.name}-${var.environment}-rds"
      environment =  "${var.environment}"
    }

    // allows traffic from the SG itself
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        self = true
    }

    // allow traffic for TCP 3306
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        security_groups = ["${var.security_group_id}"]
    }

    // outbound internet access
    egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "rds_sg_id" {
  value = "${aws_security_group.rds_sg.id}"
}