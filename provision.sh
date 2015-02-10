sudo apt-get update
sudo apt-get install -y unzip

# modx
echo "Getting MODx..."
rm -rf modx*
wget -q -O modx.zip https://modx.s3.amazonaws.com/releases/2.3.3/modx-2.3.3-pl.zip

# unzip and put to place
unzip -q modx.zip
cd modx*
cp -r * /var/www/public
cd ~

# set php timezone
echo "Configuring PHP Timezone..."
rm -rf tzupdate*
wget -q -O tzupdate.zip https://github.com/victorhaggqvist/tzupdate/archive/master.zip
unzip -q tzupdate.zip
echo "date.timezone=\"$(./tzupdate-master/tzupdate -p)\"" | sudo tee -a /etc/php5/apache2/php.ini

sudo service apache2 restart
