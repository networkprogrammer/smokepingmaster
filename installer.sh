#!/bin/bash
sudo timedatectl set-timezone America/Los_Angeles
sudo cp tcpping /usr/local/bin/tcpping
sudo cp reset /usr/local/bin/reset
sudo chmod +x /usr/local/bin/tcpping
sudo chmod +x /usr/local/bin/reset
sudo apt-get -yqq install smokeping 
sudo sed -i 's~sendmail =~#sendmail =~g' /etc/smokeping/config.d/pathnames 
sudo chown smokeping:www-data /etc/smokeping/smokeping_secrets
cd /etc/apache2/conf-available
sudo a2enconf smokeping
sudo a2enmod cgid
sudo service apache2 restart
sudo service smokeping restart


