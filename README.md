```
# install ansible, git, step-cli, gawk (gnu awk)
# curl command to get create_tokens script
./create_tokens.sh $(hostnamectl hostname)
sudo ansible-pull -U https://github.com/rahulsalvi/ssh_configs.git -i hosts
sudo ansible-playbook local.yml --connection=local -i hosts

# add yourself to ssh group

sudo systemctl status update_ssh_configs.service
sudo systemctl status update_ssh_configs.timer
sudo systemctl start update_ssh_configs.service
```

steps to rekey?
