#!/bin/bash

#cd ~/ajp

apt install python3-venv

python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip
pip install pyvmomi ansible
pip install requests

which ansible-playbook
