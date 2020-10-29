provider "aws" {
   region = var.AWS_REGION
   access_key = var.access_key
   secret_key = var.secret_key
}

resource "aws_key_pair" "mykey" {
    key_name = "mykey"
    public_key = "${file(var.path_to_public_key)}"
}

resource "aws_instance" "example" {
   ami = var.ami_id
   instance_type = "t2.micro"
   key_name = aws_key_pair.mykey.key_name
   tags = {
     Name = "HelloWorld"
   }
}

