#!/bin/bash

build () {
	docker build -t zoomulus/$2 $1
}

tag () {
	container=$1
	shift
	until [ -z "$1" ]
	do
		docker tag zoomulus/$container zoomulus/$1
		shift
	done
}

base () {
	build trusty ubuntu:14.04
	tag ubuntu:14.04 trusty:latest
	build xenial ubuntu:16.04
	tag ubuntu:16.04 xenial:latest
	build bionic ubuntu:18.04
	tag ubuntu:18.04 bionic:latest
	build focal ubuntu:20.04
	tag ubuntu:20.04 focal:latest ubuntu:latest base:latest
}


java7 () {
	build java7 java7:1.7.0
	tag java7:1.7.0 java7:latest
}

java8 () {
	build java8 java8:1.8.0
	tag java8:1.8.0 java8:latest
}

java11 () {
	build java11 java11:1.11.0
	tag java11:1.11.0 java11:latest
}

all_java () {
	java7
	java8
	java11
}

python2 () {
	build python2 python2:2.7.0
	tag python2:2.7.0 python2:latest
}

python3 () {
	build python3 python3:3.4.0
	tag python3:3.4.0 python3:latest
}

all_python() {
	python2
	python3
}

scala () {
	build scala scala:2.11.6
	tag scala:2.11.6 scala:latest
}

go () {
	build go go:1.2.1
	tag go:1.2.1 go:latest
}

erlang () {
	build erlang erlang:7.0.0
	tag erlang:7.0.0 erlang:latest
}

all_langs () {
	all_java
	all_python
	scala
	go
	erlang
}


pgsql () {
	build pgsql pgsql:9.4.5
	tag pgsql:9.4.5 pgsql:latest
}

mongo () {
	build mongo mongo:3.6.8
	tag mongo:3.6.8 mongo:latest
}

couchdb () {
	build couchdb couchdb:1.6.0
	tag couchdb:1.6.0 couchdb:latest
}

cassandra () {
	build cassandra cassandra:3.0.2
	tag cassandra:3.0.2 cassandra:latest
}

redis () {
	build redis redis:2.8.4
	tag redis:2.8.4 redis:latest
}

influxdb () {
	build influxdb influxdb:0.9.5.1
	tag influxdb:0.9.5.1 influxdb:latest
}

all_dbs () {
	pgsql
	mongo
	couchdb
	cassandra
	redis
	influxdb
}


nginx () {
	build nginx nginx:1.9.3
	tag nginx:1.9.3 nginx:latest
}

nodejs () {
	build nodejs nodejs:5.3.0
	tag nodejs:5.3.0 nodejs:latest
}

bottle () {
	build bottle bottle:0.12.0
	tag bottle:0.12.0 bottle:latest
}

tomcat7 () {
	build tomcat7 tomcat7:7.0.64
	tag tomcat7:7.0.64 tomcat7:latest
}

tomcat8 () {
	build tomcat8 tomcat8:8.0.26
	tag tomcat8:8.0.26 tomcat8:latest
}

all_tomcat () {
	tomcat7
	tomcat8
}

all_web () {
	nginx
	nodejs
	bottle
	tomcat7
	tomcat8
}


zookeeper () {
	build zookeeper zookeeper:3.4.7
	tag zookeeper:3.4.7 zookeeper:latest
}

rabbitmq () {
	build rabbitmq rabbitmq:3.2.4
	tag rabbitmq:3.2.4 rabbitmq:latest
}

kafka () {
	build kafka kafka:0.9.0.0
	tag kafka:0.9.0.0 kafka:latest
}

elasticsearch () {
	build elasticsearch elasticsearch:2.1.1
	tag elasticsearch:2.1.1 elasticsearch:latest
}

haproxy () {
	build haproxy haproxy:1.5.14
	tag haproxy:1.5.14 haproxy:latest
}

eureka () {
	build eureka eureka:1.3.1
	tag eureka:1.3.1 eureka:latest
}

logstash () {
	build logstash logstash:2.1.1
	tag logstash:2.1.1 logstash:latest
}

jackrabbit-oak() {
	build jackrabbit-oak jackrabbit-oak:1.2.9
	tag jackrabbit-oak:1.2.9 jackrabbit-oak:latest
}

all () {
	base
	all_langs
	all_dbs
	all_web
	zookeeper
	rabbitmq
	kafka
	elasticsearch
	haproxy
	eureka
	logstash
	jackrabbit-oak
}	

list () {
	echo
	echo "Available containers to build:"
	for c in base java7 java8 python2 python3 scala go erlang pgsql mongo couchdb cassandra redis influxdb nginx nodejs bottle tomcat7 tomcat8 zookeeper rabbitmq kafka elasticsearch haproxy eureka logstash jackrabbit-oak; do echo $c; done
	echo
	echo "Available containersets to build:"
	for cs in all_java all_python all_langs all_dbs all_web all; do echo $cs; done
}


if [ $# -eq 0 ]; then
        echo "Usage: $0 container-or-containerset [container-or-containerset ...]"
	echo "  (If you are unsure, try $0 list)"
        exit 0
fi

for f in $@; do
        eval ${f}
        shift
done
