FROM zoomulus/java8
RUN apt-get install -y tomcat8 \
	&& rm -rf /var/lib/apt/lists/* 
RUN mkdir -p /var/lib/tomcat8/temp \
	&& mkdir -p /usr/share/tomcat8/common/classes \
	&& mkdir -p /usr/share/tomcat8/server/classes \
	&& mkdir -p /usr/share/tomcat8/shared/classes

EXPOSE 8080
ENV CATALINA_HOME=/usr/share/tomcat8
ENV CATALINA_BASE=/var/lib/tomcat8
ENV CATALINA_TMP=/var/lib/tomcat8/temp
CMD ["/usr/share/tomcat8/bin/catalina.sh", "run"]

