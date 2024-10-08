resource "aws_instance" "fullpro" {
    ami             = var.ami
    instance_type   = "t2.medium"
    key_name        = "mykey"
    security_groups = ["${aws_security_group.ubuntusg.name}"]
    tags = {
        Name = "ubuntu-ec2"
    }

    root_block_device {
        volume_size = 30
        volume_type = "gp2"
        encrypted   =  false
    }
}
