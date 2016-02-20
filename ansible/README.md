### Wordpress Role:

This role will install the wordpress on all the servers that have been created with the terraform.

### To use this Role:
```shell
ansible-playbook site.yml -e@../secret/secure.yml -e@../terraform-aws/tendo-dev.yml
```
and use this command if you are using encrypted file:
```shell
ansible-playbook site.yml -e@../secret/secure.yml -e@../terraform-aws/tendo-dev.yml --ask-vault-pass
```
where `secure.yml` contains secure information while `tendo-dev.yml` contain the dnsname of the RDS and this file will create during the terraform execution and it's name based on the values of these variables:
- name
- environment 

**Note:** `terraform.py` is dynamic inventory created by [CiscoCloud](https://github.com/CiscoCloud/terraform.py)
