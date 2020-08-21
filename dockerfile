FROM ubuntu:latest
# install rvm
RUN apt-get update -qq && apt-get install -y nodejs

# Ubuntu dependencies
RUN apt-get install -y wget gnupg curl
RUN apt-get install iptables sudo -y

RUN apt update
RUN apt install -y apt-transport-https ca-certificates curl software-properties-common \
	&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
	&& add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"\
	&& apt update \
	&& apt-cache policy docker-ce \
	&& apt install -y docker-ce

RUN curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose