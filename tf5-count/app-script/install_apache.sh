#!/bin/sh
sudo apt install apache2 -y
sudo systemctl enable apache2
sudo systemctl start apache2