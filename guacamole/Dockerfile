FROM guacamole/guacamole:${VERSAO_GUACAMOLE}
WORKDIR /opt/guacamole
RUN rm /opt/guacamole/bin/start.sh
COPY start.sh /opt/guacamole/bin
COPY guac-customize-${NOME_CLIENTE}.jar /etc/guacamole/extensions/guac-customize.jar
EXPOSE 8080
CMD ["/opt/guacamole/bin/start.sh" ]
