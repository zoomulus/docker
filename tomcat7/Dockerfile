FROM zoomulus/java8
RUN apt-get install -y tomcat7 \
	&& rm -rf /var/lib/apt/lists/* 
RUN mkdir -p /var/lib/tomcat7/temp \
	&& mkdir -p /usr/share/tomcat7/common/classes \
	&& mkdir -p /usr/share/tomcat7/server/classes \
	&& mkdir -p /usr/share/tomcat7/shared/classes

EXPOSE 8080
ENV CATALINA_HOME=/usr/share/tomcat7
ENV CATALINA_BASE=/var/lib/tomcat7
ENV CATALINA_TMP=/var/lib/tomcat7/temp
CMD ["/usr/share/tomcat7/bin/catalina.sh", "run"]

