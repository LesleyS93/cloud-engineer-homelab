#!/bin/bash

echo "Update"
sudo apt update

echo "apt-list"
sudo apt list --upgradable

echo "Upgrade"
sudo apt upgrade -y

echo _______"update and upgrade successful"________
