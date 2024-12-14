# Use the official Tomcat 10.1 base image
FROM tomcat:10.1

# Maintainer information
LABEL maintainer="your-email@example.com"

# Clean existing webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory
COPY TicTacToeGame.war /usr/local/tomcat/webapps/TicTacToeGame.war

# Expose port 8080
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
