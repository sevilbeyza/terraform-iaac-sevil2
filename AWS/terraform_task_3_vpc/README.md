Task
Create VPC with:

a) 3 Public Subnets
b) 3 Private Subnets

Each resource you are creating should have the following softcoded tags on them.
1. Environment Dev
2. Department IT
3. Team Infrastructure
4. Created_by Your_name
F ex:
tags {
Name "gw NAT"
}

Public subnets should have IGW attached, private subnets should have NAT gateway attached.
Make sure the code is softcoded so it can work with different CIDR range. As an example
192.168.0.0/16
10.0.0.0/16

Route table has to be done properly, and subnets should be associated with the route table
On top of Public Subnet create 1 ec2 instance with your bastion key attached. The instance should have sec group that allows port
22 and 80. Using terraform user_data parameter install httpd in that instance.

Each component has to have it's own file. As an example, vpc in vpc.t private subnet in private_subnet.t
Finally, make sure the code can work with any other regions, by changing the hardcoded region value in provider.tf file. The
region value should be in tfvars and terraform should read the region during execution.
