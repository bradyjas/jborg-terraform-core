#### Outputs ####

output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${module.vpc.vpc_id}"
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = ["${module.vpc.public_subnet_ids}"]
}

output "public_subnet_cidr_blocks" {
  description = "List of public CIDR blocks"
  value       = ["${module.vpc.public_subnet_cidr_blocks}"]
}

output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = ["${module.vpc.private_subnet_ids}"]
}

output "private_subnet_cidr_blocks" {
  description = "List of private CIDR blocks"
  value       = ["${module.vpc.private_subnet_cidr_blocks}"]
}

output "zone_id" {
  value = "${aws_route53_zone.this.zone_id}"
}
