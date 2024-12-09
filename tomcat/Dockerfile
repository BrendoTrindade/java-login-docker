FROM tomcat:9.0.83-jdk8-corretto

# Install additional packages
RUN yum update -y && \
    yum install -y mysql telnet && \
    yum clean all

# Create necessary directories and copy manager apps
RUN cp -r /usr/local/tomcat/webapps.dist/manager /usr/local/tomcat/webapps/ && \
    cp -r /usr/local/tomcat/webapps.dist/host-manager /usr/local/tomcat/webapps/

# Copy configuration files
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml
COPY context.xml /usr/local/tomcat/webapps/host-manager/META-INF/context.xml
COPY login.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
