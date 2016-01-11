FROM jenkins

# Install Maven
USER root
RUN apt-get update && apt-get install -y maven

# Drop back to jenkins user
USER jenkins

# Install additional Jenkins plugins
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt
