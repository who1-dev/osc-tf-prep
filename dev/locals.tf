locals {
  namespace  = "osc"
  stage      = "dev"
  name       = "app"
  region     = "us-east-1"
  azs        = ["us-east-1a", "us-west-1b", "us-west-1c"]
  cidr_block = "10.0.0.0/16"
}