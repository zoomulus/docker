FROM zoomulus/erlang
RUN apt-get -y install couchdb \
	&& mkdir -p /var/run/couchdb \
	&& rm -rf /var/lib/apt/lists/*
EXPOSE 5984
VOLUME ["/usr/local/var/lib/couchdb"]
CMD couchdb

