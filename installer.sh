#!/bin/bash
sudo apt-get -yqq install smokeping 
sudo sed -i 's~sendmail =~#sendmail =~g' /etc/smokeping/config.d/pathnames 
cd /etc/apache2/conf-available
sudo a2enconf smokeping
sudo a2enmod cgid
sudo service apache2 restart
sudo service smokeping restart


