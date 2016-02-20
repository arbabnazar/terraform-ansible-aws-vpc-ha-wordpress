Terraform AWS Modules
---------------------

The purpose of Terraform AWS Modules are to create a fully operational AWS VPC infrastructure(subnets,routeing tables,igw etc), it will also create everything that need to be for creating EC2 and RDS instances (security key, security group, subnet group).

It will also create the Elastic Load Balancer and add the EC2 instance(s) automatically that were created using this playbook as well as creating the Route53 entry for this site and add the ELB alias to it. 


### Terraform AWS Modules Tasks:

- Create 1 x VPC with 4 x VPC subnets(2 x public and 2 x private) in differrent AZ zones inside the AWS region
- Create the AWS key pair with the provided public key
- Create 1 x security group for each(SSH,Webservers,RDS and ELB)
- Provision 2 x EC2 instances(Ubuntu 14.04 LTS) in 2 different public AZ
- Provision 1 x RDS instance in private subnets
- Launch and configure public facing VPC ELB (cross_az_load_balancing) and attach VPC subnets
- Register EC2 instances on ELB
- Take the ELB dnsname and register/create dns entry in Route53

All informations about VPC, Webserver, RDS, ELB, Route53 are defined in their respective modules.
