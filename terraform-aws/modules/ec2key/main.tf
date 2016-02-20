resource "aws_key_pair" "ec2key" {
  key_name = "${var.key_name}" 
  public_key = "${var.public_key}"
}

output "ec2key_name" {
  value = "${aws_key_pair.ec2key.key_name}"
}