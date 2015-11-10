FROM clescot/rancher-confd:3
MAINTAINER Charles Lescot
COPY ./conf.d /etc/confd/conf.d
COPY ./templates /etc/confd/templates

VOLUME ["/tmp/kafka-logs", "/kafka/config/"]

COPY zookeeper.properties /kafka/config/zookeeper.properties
COPY log4j.properties /kafka/config/log4j.properties
COPY tools-log4j.properties /kafka/config/tools-log4j.properties


CMD ["/usr/bin/supervisord"]
