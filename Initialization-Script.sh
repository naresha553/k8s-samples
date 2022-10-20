#!/bin/bash
rm -rf /home/cloud_user/k8s-samples
git clone https://github.com/naresha553/k8s-samples.git
terraform -chdir=/home/cloud_user/k8s-samples/lab-terraform-eks init
terraform -chdir=/home/cloud_user/k8s-samples/lab-terraform-eks plan
terraform -chdir=/home/cloud_user/k8s-samples/lab-terraform-eks apply --auto-approve
terraform -chdir=/home/cloud_user/k8s-samples/aws-terraform-instances/terraform-aws-examples-master/01-sample-instance init
terraform -chdir=/home/cloud_user/k8s-samples/aws-terraform-instances/terraform-aws-examples-master/01-sample-instance plan
terraform -chdir=/home/cloud_user/k8s-samples/aws-terraform-instances/terraform-aws-examples-master/01-sample-instance apply --auto-approve
sh /home/cloud_user/kuinstall.sh
wget https://raw.githubusercontent.com/linuxacademy/content-terraform-2021/main/lab_kubernetes_resources.tf -P /home/cloud_user/k8s-samples/lab-terraform-eks
kubectl apply -f /home/cloud_user/k8s-samples/froster-app/
kubectl apply -f /home/cloud_user/k8s-samples/Backend-forster/
