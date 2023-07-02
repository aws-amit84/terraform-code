provider "aws" {
  region     = "ap-south-1"
    access_key = "AKIATPEM7OTLZNVKUAXE"
    secret_key = "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"
}

resource "aws_instance" "VM" {
    ami = "ami-057752b3f1d6c4d6c"
    for_each = {
        key1 = "t2.micro"
        key2 = "t2.medium"
    }
    instance_type = each.value
    key_name = each.key
    tags = {
      Name = each.value
    }


  
}