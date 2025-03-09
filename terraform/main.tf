provider "aws" {
    region = "us-east-1"
     
}

resource "aws_default_vpc" "myvpc" {
  
}

resource "aws_security_group" "mysg" {
    name = "devangsg"
    vpc_id = aws_default_vpc.myvpc.id

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
        
    }
}

resource "aws_instance" "http_server" {
    ami = data.aws_ami.aws_linux_ami.id
    key_name = "09oct2023"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.mysg.id]
    subnet_id = tolist(data.aws_subnets.default_subnet.ids)[0]

    connection {
      type = "ssh"
      host = self.public_ip
      user = "ec2-user"
      private_key = file(var.aws_key_pair)
    }

    provisioner "remote-exec" {
        inline = [ 
            "sudo yum install httpd -y",
            "sudo service httpd start",
            "echo hi this is Webserver|sudo tee /var/www/html/index.html"
         ]
      
    }
  
}
