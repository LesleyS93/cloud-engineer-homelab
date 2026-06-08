#!/bin/bash

echo "Update"
sudo apt update
sudo apt list --upgradable

echo "Upgrade"
sudo apt upgrade -y

echo _______"update and upgrade successful"________
