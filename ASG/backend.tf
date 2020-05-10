terraform { 
backend "s3" { 
bucket = "sdlc-sevil-dev" 
key = "vet/us-east-1/sharedtools/dev/asg.tfstate" 
region = "us-east-1" 
  } 
} 
