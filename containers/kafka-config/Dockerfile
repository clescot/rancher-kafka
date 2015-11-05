FROM clescot/rancher-confd:1
MAINTAINER Charles Lescot
ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates

VOLUME ["/tmp/kafka-logs", "/kafka/config/"]

#ENTRYPOINT "/confd --backend rancher --prefix /2015-07-25"
CMD /confd --backend rancher --prefix /2015-07-25
