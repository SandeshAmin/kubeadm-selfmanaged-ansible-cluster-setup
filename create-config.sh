#!/bin/bash
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@$CONTROLIP mkdir /home/ubuntu/.kube
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@$CONTROLIP sudo cp /etc/kubernetes/admin.conf /home/ubuntu/.kube/config
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@$CONTROLIP sudo chmod +r /home/ubuntu/.kube/config
scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@$CONTROLIP:/home/ubuntu/.kube/config ~/.kube
