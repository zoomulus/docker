FROM zoomulus/python2
RUN apt-get install -y python-bottle \
	&& rm -rf /var/lib/apt/lists/* \
	&& mkdir /app
COPY hello.py /app
EXPOSE 8080
CMD python /app/hello.py

