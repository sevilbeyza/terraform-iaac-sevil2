#this file has VALUES

region      ="us-east-1"
vpc_cidr    = "10.0.0.0/16"
key_name    = "task3_key" 


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