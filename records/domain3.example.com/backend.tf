#test4
terraform {
  backend "s3" {
    region         = "us-east-1"
    bucket         = "gitops-demo-195368226277"
    key            = "domain3.example.com/terraform.tfstate"
    dynamodb_table = "gitops-demo-195368226277-state-lock"
    encrypt        = true
  }
}
