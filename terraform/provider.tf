terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.50.0" 
      #provider-version
    }
  }
  backend "s3" {
    # bucket name will be the AWS bucket name created in AWS
    bucket = "daws-remote-state"
    # key name is to specify remote state files in aws- change the key name according to infra creation
    key    = "expense-infra-dev-frontend"
    region = "us-east-1"
    #dynamodb table name created in AWS
    dynamodb_table = "daws-locking"
  }
}

provider "aws" {
    region = "us-east-1"
}
