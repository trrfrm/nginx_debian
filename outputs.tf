output "subnet_tests" {
    value = aws_subnet.subnets
}

output "subnet_count" {
    value = length(aws_subnet.subnets)
}

output "public_ip_list" {
    value = flatten(concat(aws_instance.WebServer.*.public_ip[*]))
}

output "nginx_homepage" {
    value = [ join(",", [for ip in aws_instance.WebServer.*.public_ip: "http://${ip}:80\n"]) ]
}