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


