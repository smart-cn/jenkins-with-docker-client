FROM jenkins/jenkins:lts-jdk11

USER root

# Install Docker client
ENV DOCKER_BUCKET download.docker.com
ENV DOCKER_VERSION 20.10.9

RUN set -x \
	&& curl -fSL "https://${DOCKER_BUCKET}/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz" -o docker.tgz \
	&& tar -xzvf docker.tgz \
	&& mv docker/* /usr/local/bin/ \
	&& rmdir docker \
	&& rm docker.tgz \
	&& docker -v
