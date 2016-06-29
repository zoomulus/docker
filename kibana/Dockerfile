FROM zoomulus/wily
RUN apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 46095ACC8548582C1A2699A9D27D666CD88E42B4 \
        && echo "deb http://packages.elastic.co/kibana/4.5/debian stable main" > /etc/apt/sources.list.d/kibana.list \
        && apt-get update \
        && apt-get -y install kibana \
	&& chown -R kibana:kibana /opt/kibana \
        && rm -rf /var/lib/apt/lists/*
COPY run_kibana.sh /

EXPOSE 5601
CMD /run_kibana.sh
