provider "aws" {
# Ohio
    region = "us-east-2"
# 這邊測試可以使用 profile 方式對應 ~/.aws/credentials 來對應帳戶
    profile = "terraform-test"
}

resource "aws_instance""example" {
# 2022/6/28 Amazon Linux 2 AMI x86 - 注意 ami 要對應不同 Region - ID 不一樣
    ami = "ami-02d1e544b84bf7502"
    instance_type = "t2.micro"
}
