terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-west-1"
  profile = "kenmak"
}

module "ec2module" {
  source = "./ec2"
  ec2name = "Demo-ec2"
}
  
output "module_output" {
  value = module.ec2module.instance_id
}
