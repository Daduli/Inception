sleep 20

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv -f wp-cli.phar /usr/local/bin/wp

chmod 777 /var/www/html
ls /var/www/html
wp core download --allow-root --path="/var/www/html"
rm -f /var/www/html/wp-config.php
cp ./config.php /var/www/html/wp-config.php
wp core install --allow-root --url=${DOMAIN_NAME} --title="Inception" --admin_user=${WORDPRESS_ADMIN} --admin_password=${WORDPRESS_ADMIN_PASS} --admin_email="tle@student.42nice.fr" --path="/var/www/html"
wp --allow-root --url=${DOMAIN_NAME} user create ${WORDPRESS_USER} tle@student.42nice.fr --role=editor --user_pass=${WORDPRESS_USER_PASS} --path="/var/www/html"

sleep 2

rm -f /etc/php7/php-fpm.d/www.conf
cp ./www.conf /etc/php7/php-fpm.d/www.conf

$@