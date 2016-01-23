FROM zoomulus/java7
COPY oak-run-1.2.9.jar /opt/jackrabbit-oak/oak-run.jar
COPY run-oak.sh /usr/local/bin/oak

VOLUME /var/run/jackrabbit-oak/data
EXPOSE 8080

CMD oak server http://0.0.0.0:8080/ Oak-Tar --base /var/run/jackrabbit-oak/data
