# tf-asr-scenarios

This is some test for [azure asr](https://azure.microsoft.com/fr-fr/products/site-recovery)

## 010 basic set-up

this should create a basic 3-n architecture with
- one ngnix (proxy)
- one tomcat app server
- one posgresql server

(IP are staticly set )


TFENV_TERRAFORM_VERSION=1.6.4

## reminder

ssh-keygen -f ~/tatu-key-ecdsa -t ecdsa -b 521

terraform validate
terraform init -upgrade

terraform output mytestingkey > mytestingkey.pub && chmod a-rwx,u+r mytestingkey.pub

## notice 

if `...` then go into the azure interafe subsrciption > <seletec subscription> >  Resource providers > Fiter : `microsoft.compute` and register this providergit 
