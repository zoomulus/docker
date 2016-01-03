#!/bin/bash
/opt/zookeeper/bin/zkServer.sh start
until /opt/zookeeper/bin/zkServer.sh status; do sleep 0.1; done
/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties

