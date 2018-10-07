#### Route53 ####

# Public Hosted DNS Zone
resource "aws_route53_zone" "this" {
  name    = "jasonbrady.org"
  comment = "Public DNS zone for jasonbrady.org"

  tags {
    Name        = "jasonbrady.org"
    Owner       = "Cloud Operations"
    CreatedBy   = "Terraform"
    Environment = "prod"
  }
}
