resource "vpc" "ahmadadas_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.project_name}-${var.environment}-vpc"
  }
  DNS_support = true
  DNS_hostnames = true
}