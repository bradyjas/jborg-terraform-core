### VPC ###

module "vpc" {
  source = "github.com/bradyjas/jborg-terraform-modules//common/aws/vpc"

  name            = "jborg"
  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  cidr_block      = "10.10.0.0/16"
  public_subnets  = ["10.10.101.0/24", "10.10.102.0/24", "10.10.103.0/24"]
  private_subnets = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]

  enable_dns_hostnames = "true"
  enable_nat_gateway   = "false"

  tags {
    Owner       = "Cloud Operations"
    CreatedBy   = "Terraform"
    Environment = "prod"
  }
}
