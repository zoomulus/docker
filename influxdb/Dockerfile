FROM zoomulus/base
RUN curl -s -o /tmp/influxdb.deb http://influxdb.s3.amazonaws.com/influxdb_0.9.5.1_amd64.deb \
	&& dpkg -i /tmp/influxdb.deb \
	&& rm /tmp/influxdb.deb \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 8083
EXPOSE 8086

VOLUME "/var/lib/influxdb/data"

CMD /usr/bin/influxd -config=/etc/influxdb/influxdb.conf

