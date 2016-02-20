resource "aws_elb" "elb" {
    name = "${var.name}-${var.environment}-elb"
    security_groups = ["${var.security_groups}"]
    subnets = ["${split(",", var.subnets)}"]
    tags {
      Name = "${var.name}-${var.environment}-elb"
      environment =  "${var.environment}"
    }
    
    listener {
    instance_port = 80
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"
    }

    health_check {
    healthy_threshold = 2
    unhealthy_threshold = 2
    timeout = 3
    target = "TCP:80"
    interval = 30
    }

    cross_zone_load_balancing = true
    idle_timeout = 400
    connection_draining = true
    connection_draining_timeout = 400 
    
    instances = ["${split(",", var.instance_id)}"]

    provisioner "local-exec" {
    command = "echo ELB_DNS_NAME: ${aws_elb.elb.dns_name} >> ${var.name}-${var.environment}.yml"
    }
}

output "elb_dns_name" {
  value = "${aws_elb.elb.dns_name}"
}

output "elb_zone_id" {
  value = "${aws_elb.elb.zone_id}"
}