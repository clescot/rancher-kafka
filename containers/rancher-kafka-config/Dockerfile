FROM clescot/rancher-confd:3
MAINTAINER Charles Lescot

# rancher confd section
ADD https://github.com/rancher/compose-templates/raw/master/utils/containers/confd/confd-0.11.0-dev-rancher-linux-amd64  /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

COPY supervisor.conf /etc/supervisor/conf.d/supervisord.conf

RUN mkdir -p /etc/supervisor/conf.d
RUN mkdir -p /var/log/supervisor
RUN chmod -R 600 /var/log/supervisor
RUN bash -c 'mkdir -p /etc/confd/{conf.d,templates}'

#copy confd inputs
COPY ./conf.d /etc/confd/conf.d
COPY ./templates /etc/confd/templates

COPY zookeeper.properties /kafka/config/zookeeper.properties
COPY log4j.properties /kafka/config/log4j.properties
COPY tools-log4j.properties /kafka/config/tools-log4j.properties

CMD ["/usr/bin/supervisord"]

