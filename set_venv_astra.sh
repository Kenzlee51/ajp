#!/bin/bash
set -e 

VENV_PATH="/vat/lib/jenkins/venv_astra"
COLLECTIONS_PATH="/var/lib/jenkins/collections_astra"

# Создаем отдельное окружение для старого Ansible
python3.11 -m venv "$VENV_PATH"

# Устанавливаем Ansible Core 2.15
"$VENV_PATH/bin/pip" install 'ansible-core==2.15.13'

# Устанавливаем совместимые коллекции
"$VENV_PATH/bin/ansible-galaxy" collection install \
    'ansible.posix:==1.5.4' \
    -p "$COLLECTIONS_PATH"

# Проверяем версию
"$VENV_PATH/bin/ansible-playbook" --version