#!/bin/sh

echo "Passage dans le scriptes Entrypoint.sh"




if [ "$1" = "start" ]; then
    echo "Démarage des services."

    #mise à jour du système
    apt update -y && apt upgrade -y

    chown -R www-data:www-data /var/www/html
    
    a2enmod rewrite 

    sed -i "s|session.cookie_httponly =|session.cookie_httponly = on|g" etc/php/8.2/apache2/php.ini 2>/dev/null

    apache2ctl start
    tail -f /dev/stderr
    exit 0
fi

exec "$@"
