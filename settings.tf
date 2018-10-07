#### Terraform Settings ####

terraform {
  required_version = ">= 0.11.8"

  backend "s3" {
    encrypt        = "true"
    key            = "core/terraform.tfstate"
    #region         = ""  # Set during CI/CD init
    #bucket         = ""  # Set during CI/CD init
    #dynamodb_table = ""  # Set during CI/CD init
  }
}
