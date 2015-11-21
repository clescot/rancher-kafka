FROM ubuntu:14.04
MAINTAINER Charles Lescot

# rancher confd section
ADD https://github.com/rancher/compose-templates/raw/master/utils/containers/confd/confd-0.11.0-dev-rancher-linux-amd64  /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd


RUN bash -c 'mkdir -p /etc/confd/{conf.d,templates}'

#copy confd inputs
COPY ./conf.d /etc/confd/conf.d
COPY ./templates /etc/confd/templates

COPY zookeeper.properties /kafka/config/zookeeper.properties
COPY log4j.properties /kafka/config/log4j.properties
COPY tools-log4j.properties /kafka/config/tools-log4j.properties

COPY init.sh /init.sh
RUN chmod a+x /init.sh

VOLUME /kafka/config

CMD ["/init.sh"]
