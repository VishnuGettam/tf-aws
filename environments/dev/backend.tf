# state key 

terraform {
  
  backend "s3" {
    bucket = "tf-aws-dev-state-140023394742-us-east-1-an"
    profile = "kk"
    key = "tf-aws/dev/tf-aws-dev-state.tfstate"
    region = "us-east-1"
  }
}