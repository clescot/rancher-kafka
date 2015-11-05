FROM clescot/rancher-confd:2
MAINTAINER Charles Lescot
COPY ./conf.d /etc/confd/conf.d
COPY ./templates /etc/confd/templates

VOLUME ["/tmp/kafka-logs", "/kafka/config/"]

#ENTRYPOINT "/confd --backend rancher --prefix /2015-07-25"
CMD /confd --backend rancher --prefix /2015-07-25
