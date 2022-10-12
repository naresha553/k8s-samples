#!/bin/bash

echo "hello world"

sudo echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCwyvHfchNLZJseRi3/9MZmSxciC7Tupf294mgjKOpn3/83CkAU/tmYcvTrcKrG/8H5h14Sggj8QhEuDmf1OV5Wc+Fu86E3WkofUuysDrvjZmB3aJMee5TTAZHb29wU5eOVzcbpXaokhrztJPX4M6O9uQTm6bhsxQ7v2NlBNr/k8spPUmoDgs/rjMXO60ZIDsRhSbCcZAJfiX2AplDw4uWhO5dUE4eglbz+bn4cXtDs5V0DLYHtZB7K4Z5hfyIEHD/QNKHxRtpatOMEjovUEc6lLwLDKLH0XjvVL2EChApZrki6Z5LGxzdOqK57NdR41IsPsmg/5Uxz1KnCUH7DABjj root@98ca8001152c.mylabserver.com" >> /root/.ssh/authorized_keys

#!/bin/bash
set -ex
#sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ubuntu  
EOF