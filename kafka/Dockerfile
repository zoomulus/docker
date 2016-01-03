FROM zoomulus/scala
RUN curl -fL http://apache.cs.utah.edu/zookeeper/zookeeper-3.4.7/zookeeper-3.4.7.tar.gz | tar xzf - -C /opt \
	&& mv /opt/zookeeper-3.4.7 /opt/zookeeper \
	&& mv /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
	&& curl -fL http://apache.cs.utah.edu/kafka/0.9.0.0/kafka_2.11-0.9.0.0.tgz | tar xzf - -C /opt \
	&& mv /opt/kafka_2.11-0.9.0.0 /opt/kafka \
	&& rm -rf /var/lib/apt/lists/*
COPY run.sh /
VOLUME /tmp/zookeeper
EXPOSE 2181 9092
CMD ["bash", "/run.sh"]

