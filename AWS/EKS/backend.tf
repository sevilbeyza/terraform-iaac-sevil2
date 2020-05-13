terraform { 
backend "s3" { 
bucket = "sevil-terraform-eks" 
key = "application/us-east-1/state/dev/infrastructer.tfstate.json" 
region = "us-east-1" 
  } 
} 
