#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1> Hello World:deployed via TF </h1> | sudo cp /tmp/bash.sh  /var/www/html/html.index"
