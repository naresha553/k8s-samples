#!/bin/bash
git clone https://github.com/naresha553/k8s-samples.git
terraform -chdir=/home/cloud_user/k8s-samples/lab-terraform-eks init
terraform -chdir=/home/cloud_user/k8s-samples/lab-terraform-eks plan
terraform -chdir=/home/cloud_user/k8s-samples/lab-terraform-eks apply --auto-approve
aws eks --region $(terraform -chdir=/home/cloud_user/k8s-samples/lab-terraform-eks output -raw region) update-kubeconfig --name $(terraform -chdir=/home/cloud_user/k8s-samples/lab-terraform-eks output -raw cluster_name)
wget https://raw.githubusercontent.com/linuxacademy/content-terraform-2021/main/lab_kubernetes_resources.tf -P /home/cloud_user/k8s-samples/lab-terraform-eks