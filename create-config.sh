#!/bin/bash
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@167.71.236.224 mkdir /home/ubuntu/.kube
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@167.71.236.224 sudo cp /etc/kubernetes/admin.conf /home/ubuntu/.kube/config
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@167.71.236.224 sudo chmod +r /home/ubuntu/.kube/config
scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@167.71.236.224:/home/ubuntu/.kube/config ~/.kube