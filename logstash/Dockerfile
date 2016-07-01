FROM zoomulus/java8
RUN apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4 \
        && echo "deb http://packages.elasticsearch.org/logstash/2.1/debian stable main" > /etc/apt/sources.list.d/logstash.list \
        && apt-get update \
        && apt-get -y install logstash \
        && rm -rf /var/lib/apt/lists/*

COPY default.conf /etc/logstash/conf.d/default.conf
VOLUME ["/etc/logstash/conf.d"]
CMD ["/opt/logstash/bin/logstash", "agent", "-f", "/etc/logstash/conf.d"]
