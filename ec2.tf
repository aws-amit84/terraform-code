

resource "aws_instance" "myec2"{
    ami = "ami-057752b3f1d6c4d6c"
    instance_type = "t2.micro"

    tags = {
        Name = "TFMachine"
    }
}
