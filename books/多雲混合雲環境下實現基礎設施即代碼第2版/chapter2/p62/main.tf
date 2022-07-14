provider "aws" {
# Ohio
    region = "us-east-2"
# 這邊測試可以使用 profile 方式對應 ~/.aws/credentials 來對應帳戶
    profile = "terraform-test"
}

resource "aws_instance""example" {

# 2022/6/28 Amazon Linux 2 AMI x86 - ami-02d1e544b84bf7502 - 注意 ami 要對應不同 Region - ID 不一樣
# 2022/7/10 Canonical, Ubuntu, 22.04 LTS, amd64 - ami-02f3416038bdb17fb - 注意 ami 要對應不同 Region - ID 不一樣
    ami = "ami-02f3416038bdb17fb"
    instance_type = "t2.micro"

# 這邊去引用下面的 security group 的 ID
    vpc_security_group_ids = [aws_security_group.instance.id]


    user_data = <<-EOF
                #!/bin/bash
                echo " Hello,World" > index.html
                nohup busybox httpd -f -p  ${var.server_port} ＆ 
                EOF


    tags = {
      Name = "terraform-example"  
    }
}

resource "aws_security_group" "instance" {

  name = "terraform-example-instance"

  ingress {
    from_port   = var.server_port
    to_port     = var.server_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

