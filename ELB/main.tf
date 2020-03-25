
resource "aws_elb" "bar" {
  availability_zones = "${var.availability_zone}"


  listener {
    instance_port     = "${var.instance_port}"
    instance_protocol = "${var.instance_protocol}"
    lb_port           = "${var.lb_port}"
    lb_protocol       = "${var.lb_protocol}"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  
  #instances = []
  cross_zone_load_balancing   = "${var.cross_zone_load_balancing}"
  idle_timeout                = 400
  connection_draining         = "${var.connection_draining}"
  connection_draining_timeout = 400

  
}
