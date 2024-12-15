# Use Tomcat 10.0.27 and JDK 20
FROM tomcat:10-jdk21-temurin-noble

# This limits the amount of memory used
ENV JAVA_OPTS="-Xmx300m"

# Expose port 8080 when running on localhost
EXPOSE 8080

# Copy in our ROOT.war to the right place in the container
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# LOCALHOST:  Run catalina in the container
# Should map localhost:8080 to this app
CMD ["catalina.sh", "run"]
