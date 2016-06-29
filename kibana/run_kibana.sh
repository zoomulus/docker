#!/bin/bash

es_host=elasticsearch
if [ $# -gt 0 ]; then
	es_host=${1}
	shift
fi

echo elasticsearch.url: "http://${es_host}:9200" >> /opt/kibana/config/kibana.yml

/opt/kibana/bin/kibana "$@"

