terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.68.0"
    }
}
}

provider "aws" {
  region    = "ap-south-1" # region value

}
provider "aws" {
  alias = "another_region"
  region    = "us-east-1" # region value
}


