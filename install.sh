#!/bin/bash
sudo apt-get update
sudo apt-get install python3-yaml
sudo mv /home/ts3proxy/ts3proxy.service /lib/systemd/system/
cd /home/ts3proxy/
sudo chmod u+x *.sh
sudo chmod u+x *.py
sudo cp -n config.example.yml config.yml
nano config.yml

sudo systemctl daemon-reload
sudo systemctl enable ts3proxy.service
sudo systemctl start ts3proxy.service
echo "https://github.com/jake-fox/ts3proxy"
echo "Install complete, is now accessed as <ts3proxy.service>"
echo "service is set to always restart"
echo "sudo systemctl enable ts3proxy.service"
echo "sudo systemctl start ts3proxy.service"
echo "sudo systemctl stop ts3proxy.service"
echo "sudo systemctl restart ts3proxy.service"
echo "sudo systemctl status ts3proxy.service"
echo "Restart Required"
echo "Do you accept <Y> <N>"
read reply
if [ "$reply" = "y" ] || [ "$reply" = "Y" ];
then 
echo "Rebooting Now"
sleep 2
reboot



