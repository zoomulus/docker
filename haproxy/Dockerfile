FROM zoomulus/ubuntu:15.10
RUN apt-get install -y haproxy \
	&& mkdir -p /run/haproxy \
	&& rm -rf /var/lib/apt/lists/* \
	&& sed -i -e 's/daemon//g' /etc/haproxy/haproxy.cfg

CMD ["haproxy", "-f", "/etc/haproxy/haproxy.cfg"]

