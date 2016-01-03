FROM zoomulus/java8
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 514A2AD631A57A16DD0047EC749D6EEC0353B12C \
	&& echo 'deb http://www.apache.org/dist/cassandra/debian 30x main' >> /etc/apt/sources.list.d/cassandra.list \
	&& apt-get update \
	&& apt-get install -y cassandra \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 7000 7001 7199 9042 9160
VOLUME ["/var/lib/cassandra"]
CMD cassandra -f
