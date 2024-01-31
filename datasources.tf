data "aws_ami" "latest-ubuntu-image" {
  most_recent = true
  owners      = [ "amazon" ]
  filter {
    name      = "name"
    values    = [ "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*" ]
  }
  filter {
    name      = "virtualization-type"
    values    = [ "hvm" ]
  }
}