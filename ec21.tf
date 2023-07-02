provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIATPEM7OTL5FM7B24H"
  secret_key = "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"
}


resource "aws_instance" "myec2" {
  ami           = "ami-057752b3f1d6c4d6c"
  instance_type = "t2.micro"

  tags = {
    Name = "TFMachine"
  }
}
