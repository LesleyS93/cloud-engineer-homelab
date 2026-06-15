#!/bin/bash

echo "Update"
sudo apt update

echo "Remove"
sudo apt autoremove -y

echo "Upgrade"
sudo apt upgrade -y

echo _______"update and upgrade successful"________
