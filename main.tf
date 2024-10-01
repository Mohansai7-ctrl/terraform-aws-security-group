#This is the root module for child expense-terraform
#There it is used for sg.tf

resource "aws_security_group" "main" {
    name = local.sg_final_name
    description = "Allow TLS Inbound traffic and all outbound traffic"  #TLS is Transport Layer Security inspection configureation used to monitor and control encrypted network traffic
    vpc_id = var.vpc_id

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = merge(
        var.common_tags,
        var.sg_tags,
        {
            Name = local.sg_final_name
        }
    )
}