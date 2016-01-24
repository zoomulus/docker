FROM zoomulus/base
RUN for key in DFFA3DCF326E302C4787673A01C4E7FAAAB2461C 42F3E95A2C4F08279C4960ADD68FA50FEA312927; do apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done \
	&& groupadd -r mongodb && useradd -r -g mongodb mongodb \
	&& echo "deb http://repo.mongodb.org/apt/debian wheezy/mongodb-org/3.2 main" > /etc/apt/sources.list.d/mongodb-org.list \
	&& apt-get update \
	&& apt-get install -y mongodb-org \
	&& mkdir -p /data/db \
	&& chown -R mongodb:mongodb /data/db \
	&& rm -rf /var/lib/apt/lists/*
COPY mongod.conf /etc/mongod.conf

EXPOSE 27017
VOLUME /var/lib/mongodb
CMD mongod -f /etc/mongod.conf

