#!/bin/bash

# Удалите контейнеры, если они существуют
docker rm -f my_centos7_container my_ubuntu_container fedora_container

# Запустите контейнеры с бесконечным циклом, чтобы они продолжали работать
docker run -d --name my_centos7_container centos:7 /bin/bash -c "while true; do sleep 1000; done"
docker run -d --name my_ubuntu_container ubuntu:latest /bin/sh -c "apt-get update; apt-get install -y python3; while true; do sleep 1000; done"
docker run -d --name fedora_container fedora:latest /bin/bash -c "while true; do sleep 1000; done"

# Дайте контейнерам несколько секунд на запуск
sleep 100

# Запустите ansible-playbook
ansible-playbook -i /root/08-ansible-01-base/playbook/inventory/prod.yml /root/08-ansible-01-base/playbook/site.yml --vault-password-file=/root/vault_password.txt

# Остановите контейнеры
docker stop my_centos7_container my_ubuntu_container fedora_container

