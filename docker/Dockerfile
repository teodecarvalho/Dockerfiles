FROM ubuntu:18.04 

LABEL maintainer="Teotonio <teo.decarvalho@gmail.com>"

USER root

RUN apt-get update && \
    apt-get install -yq apt-transport-https \
	                    ca-certificates \
						curl \
						software-properties-common && \
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
	add-apt-repository \
	   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	      $(lsb_release -cs) \
		     stable" 
RUN apt-get update && \
	apt-get install -yq docker-ce && \
    apt-get clean && \
    mkdir /Public

WORKDIR /Public
