FROM roundcube/roundcubemail:latest-apache

RUN sed -i "s/exec \"\$@\"/sh \/plugin-config.sh \&\& exec \"\$@\"/" /docker-entrypoint.sh

VOLUME /var/roundcube/plugins/config

COPY ./plugin-config.sh /
