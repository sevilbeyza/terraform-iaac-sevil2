environment = "dev" 
s3_bucket = "sdlc-sevil-dev" #Will be used to set backend.tf 
s3_folder_project = "vet" #Will be used to set backend.tf 
s3_folder_region = "us-east-1" #Will be used to set backend.tf 
s3_folder_type = "sharedtools" #Will be used to set backend.tf 
s3_tfstate_file = "asg.tfstate" #Will be used to set backend.tf 

#we need to do this part hard coded , 
 #because maybe each envirimnt need difrent amount of ip address
#we take it out from vpc

  public_cidr1 = "10.0.1.0/24"
  public_cidr2 = "10.0.2.0/24"
  public_cidr3 = "10.0.3.0/24"
  private_cidr1 = "10.0.101.0/24"
  private_cidr2 = "10.0.102.0/24"
  private_cidr3 = "10.0.103.0/24"




region= "us-east-1"
 

 #for new module only change line 6 tf.state file value
 
  

