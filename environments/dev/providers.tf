
provider "aws" {
  profile = "kk"
  region  = "us-east-1"


  default_tags {
    tags = {
      Environment = var.environment
      Project     = "tf-aws"
      ManagedBy   = "Terraform"
    }
  }

}
