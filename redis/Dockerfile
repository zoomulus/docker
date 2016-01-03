FROM zoomulus/base
RUN apt-get install -y redis-server \
	&& rm -rf /var/lib/apt/lists/*
EXPOSE 6379
CMD redis-server

