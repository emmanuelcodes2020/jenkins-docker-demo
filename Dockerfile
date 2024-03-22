# Use the official Jenkins LTS (Long Term Support) image from Docker Hub
FROM jenkins/jenkins:lts

# Skip the initial setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# Install necessary plugins (if any)
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Skip the Jenkins setup wizard
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# Skip the Jenkins update wizard
ENV JAVA_OPTS="$JAVA_OPTS -Dhudson.model.UpdateCenter.never=true"

# Copy Jenkins configuration as code scripts (if any)
# COPY jenkins.yaml /usr/share/jenkins/ref/jenkins.yaml

# Copy initial admin password to expected location
# COPY initialAdminPassword /var/jenkins_home/secrets/initialAdminPassword

# Expose Jenkins port
EXPOSE 8080

# Provide Docker volume for Jenkins data persistence
VOLUME /var/jenkins_home
