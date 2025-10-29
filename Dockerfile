# Use the official Tomcat 10.1 image with JDK 17
FROM tomcat:10.1-jdk17

LABEL maintainer="sarunya"

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file as ROOT
COPY lwi.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
