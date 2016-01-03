FROM zoomulus/java7
RUN curl -fL http://apache.cs.utah.edu/zookeeper/zookeeper-3.4.7/zookeeper-3.4.7.tar.gz | tar xzf - -C /opt \
	&& mv /opt/zookeeper-3.4.7 /opt/zookeeper \
	&& rm -rf /var/lib/apt/lists/* \
	&& mv /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg

VOLUME /tmp/zookeeper
EXPOSE 2181 2888 3888
CMD ["/opt/zookeeper/bin/zkServer.sh", "start-foreground"]

