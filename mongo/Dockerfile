FROM zoomulus/base
RUN apt-get update \
	&& apt-get install -y mongodb \
	&& mkdir -p /data/db \
	&& chown -R mongodb:mongodb /data/db \
	&& rm -rf /var/lib/apt/lists/*
COPY mongod.conf /etc/mongod.conf

EXPOSE 27017
VOLUME /var/lib/mongodb
CMD mongod -f /etc/mongod.conf --bind_ip_all

