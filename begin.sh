#!/bin/bash
pub_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCgXGCmc4A0RMupr2FbA6j9K1Zq6KSGE22kUzNI/fygilbw4924DzmMhbj0sJPUJilzMVEbPI4rKdTkD2j2nEYspPRSvFsgmq0Enmfh6Akd/aZU0RpHZKZrrJOsGGdBKVDBDToGMayjYWeSkYssE4mpr9PiKXUYOUDayiFabDup7VkP7y/rMCYXEEOOiZU7UGdMRsd9kMjn89qZebu9b8I8uVye8ZyzdHF9HPCNk/vUCYfMpHj970QXiKf/bAez+varZ/Bi6hpax25mGNly59cOrvUAvz9m7VNxOvDk8m0faMxgIGBT/NIIjoE54hXEjRB2KnF4P1WdbB/utgGoV6aINv/oG60d/5oH3k3oCyas81j28qbkOjjbN7s7HrxPVp1/EH8KZLaf2iQWSr5/7XnQmC9NwUey4e8oLMXTavPPSesYVzHpO0z64fApGkc00XMCjeQ/pwTFkGrYmeU7hbc5puqW4TXxNIZq4v2JHf9tQb9r6vOVUVABWp50fVqpPQbHFW0+7cT4FUCQoIFLWbhtyXcc6rLsd4uYr3WczQtzGszrrHNpSTJIcVhOPoXGH7PAvRCkSeos684v7nh5p60kXrUw4WfBC0ygROXEEnRcyIf4fEnVe8irTzBhK2ug7Y6UTL1WbLNuIg8aY66d3kOFJXhzBmbDooqMc4zGbPSMGw== rsa-key-20210705"
mkdir -p /root/.ssh
echo "$pub_key" > /root/.ssh/authorized_keys
chmod u+x 700 /root/.ssh/authorized_keys
systemctl enable ssh
systemctl start ssh
echo "AllowUsers root" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
rm /root/.bashrc
wget https://raw.githubusercontent.com/m24vey/get/main/.bashrc
mv .bashrc /root/.bashrc
rm begin.sh
