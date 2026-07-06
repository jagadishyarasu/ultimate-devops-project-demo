terraform {
  backend "s3" {
    bucket         = "jagadishyarasu-515966515841-tfstate"
    key            = "otel-demo/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
