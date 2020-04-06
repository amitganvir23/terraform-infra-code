#!/bin/sh

# kafka_plybook="../../../ansible/test/cp-ansible/"
kafka_plybook="../../../ansible/kafka-ssl-ansible-code/cp-ansible/"
sleep 2m 
find  $kafka_plybook -type f|xargs dos2unix
chmod 655 $kafka_plybook/hosts/*
sleep 1m
$kafka_plybook/hosts/ec2.py --list --refresh
cd $kafka_plybook
# ansible-playbook test.yml -i hosts/ec2.py --private-key /tmp/sai-ec2.pem -vv > /tmp/kafa-ansible.log
ansible-playbook kafka-inv-create.yml -i hosts/ec2.py
sleep 40
ansible-playbook all.yml -i hosts/kafka_inventory > /tmp/kafa-ansible.log
# ansible-playbook kafka-deploy.yml -i hosts/kafka_inventory > /tmp/kafa-ansible.log
#ansible-playbook kafka_hosts.yml kafka-deploy.yml -i hosts/ec2.py --private-key /tmp/sai-ec2.pem > /tmp/kafa-ansible.log