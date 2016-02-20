resource "aws_db_subnet_group" "rds_subnet_group" {
  name = "${var.name}-${var.environment}-subnet-group"
  description = "Our main group of subnets"
  subnet_ids = ["${split(",", var.subnet_ids)}"]
}

resource "aws_db_instance" "rds" {
  identifier = "${var.name}-${var.environment}"
  allocated_storage = "${var.storage}"
  engine = "${var.engine}"
  engine_version = "${var.engine_version}"
  instance_class = "${var.instance_class}"
  multi_az = "${var.multi_az}"
  name = "${var.db_name}"
  username = "${var.username}"
  password = "${var.password}"
  db_subnet_group_name = "${aws_db_subnet_group.rds_subnet_group.id}"
  vpc_security_group_ids = ["${var.security_group_id}"]
  tags {
    environment = "${var.environment}"
  }
  
  provisioner "local-exec" {
    command = "echo DB_HOSTNAME: ${aws_db_instance.rds.address} >> ${var.name}-${var.environment}.yml"
  }
}

output "rds_address" {
  value = "${aws_db_instance.rds.address}"
}