FROM zoomulus/java8
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4 \
	&& echo "deb http://packages.elasticsearch.org/elasticsearch/2.x/debian stable main" > /etc/apt/sources.list.d/elasticsearch.list \
	&& apt-get update \
	&& apt-get -y install elasticsearch \
	&& rm -rf /var/lib/apt/lists/*
RUN mkdir -p /usr/share/elasticsearch/config/scripts \
	&& mkdir -p /usr/share/elasticsearch/data/elasticsearch \
	&& chown -R elasticsearch /usr/share/elasticsearch

COPY config.yml /usr/share/elasticsearch/config/config.yml
COPY logging.yml /usr/share/elasticsearch/config/logging.yml
VOLUME /usr/share/elasticsearch/data
EXPOSE 9200 9300
CMD ["gosu", "elasticsearch", "/usr/share/elasticsearch/bin/elasticsearch"]

