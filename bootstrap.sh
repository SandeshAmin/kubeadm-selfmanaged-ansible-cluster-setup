#!/bin/bash
set -e
./init.sh
ansible-playbook -i hosts.ini --ssh-common-args='-o StrictHostKeyChecking=no' ./great-reset.yaml
ansible-playbook -i hosts.ini --ssh-common-args='-o StrictHostKeyChecking=no' ./initial.yml
ansible-playbook -i hosts.ini --ssh-common-args='-o StrictHostKeyChecking=no' ./kube-dependencies.yml
ansible-playbook -i hosts.ini --ssh-common-args='-o StrictHostKeyChecking=no' ./control-planes.yml
ansible-playbook -i hosts.ini --ssh-common-args='-o StrictHostKeyChecking=no' ./cilium-install.yml
ansible-playbook -i hosts.ini --ssh-common-args='-o StrictHostKeyChecking=no' ./workers.yml
ansible-playbook -i hosts.ini --ssh-common-args='-o StrictHostKeyChecking=no' ./tools.yml
./create-config.sh