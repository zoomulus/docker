FROM zoomulus/erlang
RUN apt-get install -y rabbitmq-server \
	&& rm -rf /var/lib/apt/lists/*
VOLUME /var/lib/rabbitmq
EXPOSE 4369 5671 5672 25672
CMD /usr/lib/rabbitmq/bin/rabbitmq-server

