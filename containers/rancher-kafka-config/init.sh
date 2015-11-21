#!/bin/bash

set -eo pipefail


until /usr/local/bin/confd  -onetime -confdir /etc/confd -backend rancher -prefix /2015-07-25; do
  echo " waiting for confd to refresh kafka-config templates"
  sleep 5
done

/export.sh

# Run confd in the background to watch the upstream servers
/usr/local/bin/confd  -interval 30 -confdir /etc/confd -backend rancher -prefix /2015-07-25 &
echo "confd is listening for changes on kafka config files dependencies"

