#this file has VALUES
user	    =	"centos"
ami	        =	"ami-09e5afc68eed60ef4" #ami for london 
region      ="eu-west-2"
vpc_cidr    = "10.0.0.0/16"
vpc_id	    ="vpc-0327599c7a859e811"
key_name    = "task3_key" 
ssh_key_private =	"~/.ssh/id_rsa"  

zone_id		 =	"Z009097213R7B3H9ZE9ES"	   
domain		 =	"sevilcankiroglu.com." 
 
public_cidr1 = "10.0.101.0/24"
public_cidr2 = "10.0.102.0/24"
public_cidr3 = "10.0.103.0/24"

az1            ="a"
az2            ="b"
az3            ="c"

private_cidr1   ="10.0.1.0/24"
private_cidr2   ="10.0.2.0/24"
private_cidr3   ="10.0.3.0/24"

tags {
    Environment = "Dev"
    Department  = "IT"
    Team        = "infrastructure"
    Created_by  = "sevil"
}

instance_type	    		=	"t2.micro" 




  
