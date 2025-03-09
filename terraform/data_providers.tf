data "aws_ami" "aws_linux_ami" {
    most_recent = true
    owners = ["amazon"]
    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*"]
    }
  
}

data "aws_subnets" "default_subnet" {
    filter {
    name   = "vpc-id"
    values = [aws_default_vpc.myvpc.id]
  }
  
}
