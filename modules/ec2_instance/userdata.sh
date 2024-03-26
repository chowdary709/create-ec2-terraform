#!/bin/bash
sudo dnf install python3.11-pip ansible -y | tee -a /opt/userdata.log
sudo pip3.11 install boto3 botocore | tee -a /opt/userdata.log
sudo ansible-pull -i localhost, -U https://github.com/chowdary709/expense-ansible expense.yml -e role_name=${var.role_name} -e env=${var.component} | tee -a /opt/userdata.log
EOF