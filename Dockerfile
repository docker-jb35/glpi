FROM debian:12

COPY ./scriptes/entrypoint.sh /opt/scriptes/entrypoint.sh

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt upgrade -y && apt install -y apache2 php php-xml php-mysql php-curl php-gd php-intl  php-ldap php-bz2 php-zip php-mbstring

RUN chmod +x /opt/scriptes/entrypoint.sh && /opt/scriptes/entrypoint.sh

COPY ./config/000-default.conf /etc/apache2/sites-available/000-default.conf

ENTRYPOINT [ "/opt/scriptes/entrypoint.sh" ]

CMD ["start"]