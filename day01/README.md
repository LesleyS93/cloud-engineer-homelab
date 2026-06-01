# Day 1 - Linux Foundation Setup

## Objective
Build the base Linux server for the Cloud Engineer homelab.

## Tasks Completed

- Installed Ubuntu Server 24.04 LTS
- Updated system packages
- Created cloudadmin user
- Granted sudo privileges
- Verified network connectivity
- Enabled SSH access
- Created homelab folder structure
- Installed Git

## Commands Used

```bash
sudo apt update && sudo apt upgrade -y
sudo adduser cloudadmin
sudo usermod -aG sudo cloudadmin
sudo systemctl enable ssh
sudo systemctl start ssh
ip a
ping google.com
