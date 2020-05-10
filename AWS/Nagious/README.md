WHAT IT DOES:It install the Nagious XI Server by using Terraform Provisioner

What is Nagios:Nagios XI is the most powerful monitoring software
Nagios XI is the most powerful and trusted network monitoring software on the market. Nagios XI extends on proven, enterprise-class Open Source components to deliver the best network, server and application monitoring solution for today's demanding organizational requirements
https://www.capterra.com/p/152793/Nagios-XI/


Please read through each file before attempting to use it in your environment.

Provider :AWS
AMI Type :Centos 7
Terraform version:2.59

PREREQUISITES and  TASK:
1 VPC
 6 Subnets
  3 Private Subnets
  3 Public Subnets
Public subnets should have IGW attached to it
Private subnets should have NG attached to it
Configure route tables

To make sure that you have a connection create ec2 instance, manually, on public subnet and ping www.google.com

TASK
It creates an instance with Data Source that will be used for hosting Nagios Server. 
Than install the Nagios XI by using Terraform Provisioner
 Necessary outputs of VPC and other components is print out as an output 

Source Documentation 
https://www.terraform.io/docs/provisioners/index.html 
https://assets.nagios.com/downloads/nagiosxi/docs/Installing-Nagios-XI-Manually-on-Linux.pdf 


 AFTER NAGIOUS XI SERVER INSTALLATION, FOLLOW THE STEPS BELOW  FOR CONFIGURATION

Note:After successfully installation wait 30 minutes to reach to Nagios configuring webpage
1-Copy the ip address of the Nagios Server instance and pass it to browser
2-Click Nagios XI
3-In the Nagios XI installation page accept as it an click next
4-Copy the given password , and put you full name  and email click Finish Install
5-login with your user name and given password 
6-Accept the agreement and submit 




