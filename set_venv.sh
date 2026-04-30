#!/bin/bash

#cd ~/ajp

python3 -m venv venv

source venv/bin/activate

pip install --upgrade pip
pip install pyvmomi ansible
pip install requests

which ansible-playbook
