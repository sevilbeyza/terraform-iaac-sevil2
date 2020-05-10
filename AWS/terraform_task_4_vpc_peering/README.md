Task
Create VPC Peering Task with:

VPC Task:
1.Create a new VPC in US East 2 (Ohio) region, use 192.168.0.0/16 CIDR.
    a. Create 3 public subnets, 3 private subnets.
	    i. Use 192.168.1.0/24, 192.168.2.0/24, 192.168.3.0/24 CIDR for public
		subnets.
		Create new internet gateway, attach it to new VPC
		Create new route table and attach public subnets to it, make sure it is
		routable to 0.0.0.0/0 over Internet Gateway.
	    
        ii. Use 192.168.11.0/24, 192.168.12.0/24, 192.168.13.0/24 CIDR for private
		subnets.
		Create new NAT gateway
		Create new route table and attach private subnets to it, make sure it is
		routable to 0.0.0.0/0 over NAT gateway.
      
    b. Create new instance off of Centos 7 AMI, at public subnet. This instance is going
	    to be used as Bastion host, so we only need SSH port to be open.
    C.Create Web Server, on public subnet, use "User Data" to install httpd on it. Once
	   launched, test if port HTTP is accessible.
    d.Create DB Server, on private subnet, use Centos 6 AMI. Once launched, ssh into
	it and install MySQL, test if MySQL is accessible from Web Server over private
	network.

2. Create a second AWS account, create a new VPC at US East 1 (N Virginia) region, use
10.0.0.0/16 CIDR

	a. Create 3 public subnets, 3 private subnets.
	    i. Use 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24 CIDR for public subnets.
		Create new internet gateway, attach it to new VPC
		Create new route table and attach public subnets to it, make sure it is
		routable to 0.0.0.0/0 over Internet Gateway.
	    ii. Use 10.0.11.0/24, 10.0.12.0/24, 10.0.13.0/24 CIDR for private subnets.
		Create new NAT gateway
		Create new route table and attach private subnets to it, make sure itis
		routable to 0.0.0.0/0 over NAT gateway.
    b. Create a Bastion Host on a public subnet, use Centos 7 AMI.
    C.Create a Backup Server, on a private subnet, use Centos 7 AMI.

3. Create VPC Peering between 2 VPCs
  'ttesldosawsamazonconiseclatestpeeringlshaisvpcpeeinghtm
   
   a. Once VPC peering is configured, test if Backup Server can ping MySQL instance.
      Document the process and share when done.
      Let me know if you have any questions
