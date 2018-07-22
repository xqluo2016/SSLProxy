apt update
apt-get --assume-yes install apache2
cd /etc/apache2
a2enmod ssl proxy proxy_http proxy_connect

mkdir /etc/apache2/ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache.key -out /etc/apache2/ssl/apache.crt <<ENDL









ENDL

sed -i 's/\/etc\/ssl\/certs\/ssl-cert-snakeoil.pem/\/etc\/apache2\/ssl\/apache.crt/g' /etc/apache2/sites-available/default-ssl.conf

sed -i 's/\/etc\/ssl\/private\/ssl-cert-snakeoil.key/\/etc\/apache2\/ssl\/apache.key/g' /etc/apache2/sites-available/default-ssl.conf


sed -i '5iProxyRequests On' /etc/apache2/sites-available/default-ssl.conf
sed -i '6iProxyVia On' /etc/apache2/sites-available/default-ssl.conf
sed -i '7i<Proxy "*">' /etc/apache2/sites-available/default-ssl.conf
sed -i '8i</Proxy>' /etc/apache2/sites-available/default-ssl.conf


sed -i 's/Listen 80/#Listen 80/g' /etc/apache2/ports.conf

echo "" >/var/www/html/index.html

a2ensite default-ssl.conf 

service apache2 restart
