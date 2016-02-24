# Basic Terraform Help

### Requirements:

- Terraform
- Ansible
- AWS admin access

### Tools Used:
```shell
ansible --version
ansible 2.0.0.2
  config file = /etc/ansible/ansible.cfg
  configured module search path = Default w/o overrides

terraform version
Terraform v0.6.11
```

Before using the terraform, we need to export `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` as environment variables:

```
export AWS_ACCESS_KEY_ID="xxxxxxxxxxxxxxxx"
export AWS_SECRET_ACCESS_KEY="yyyyyyyyyyyyyyyyyyyy"
```
To Generate and show an execution plan (dry run):
```
terraform plan
```
To Builds or makes actual changes in infrastructure:
```
terraform apply
```
To inspect Terraform state or plan:
```
terraform show
```
To destroy Terraform-managed infrastructure:
```
terraform destroy
```
**Note**: Terraform stores the state of the managed infrastructure from the last time Terraform was run. Terraform uses the state to create plans and make changes to the infrastructure.

### Ansible Role after Terraform Provisioning:

Once the Terraform will create all the resources over AWS, you can use the Ansible to install the wordpress over the EC2 instance(s)

### To use the provided Role:
```shell
ansible-playbook site.yml -e@../secret/secure.yml -e@../terraform-aws/tendo-dev.yml
```
or use this command if you are using encrypted file:
```shell
ansible-playbook site.yml -e@../secret/secure.yml -e@../terraform-aws/tendo-dev.yml --ask-vault-pass
```
where `secure.yml` contains secure information while `tendo-dev.yml` contain the dnsname of the RDS(in this example) and this file will create during the terraform execution and it's name based on the values of these variables:
- name
- environment 

**Note:** `terraform.py` is dynamic inventory created by [CiscoCloud](https://github.com/CiscoCloud/terraform.py)

