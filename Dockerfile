FROM jenkins/jenkins:latest
USER root

# install jenkins plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

# disable the setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# copy configuration yaml
COPY jenkins-casc.yaml /usr/local/jenkins-casc.yaml
ENV CASC_JENKINS_CONFIG /usr/local/jenkins-casc.yaml

# install docker
RUN apt-get update && \
    apt install docker.io -y