terraform { 
backend "s3" { 
bucket = "sdlc-sevil-qa" 
key = "vet/us-east-2/sharedtools/qa/infrastructure.tfstate" 
region = "us-east-2" 
  } 
} 
