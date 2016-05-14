FROM ubuntu:16.04

MAINTAINER Ismael Caba�as Garcia <ismaelcabanas@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y software-properties-common && \
	apt-get install -y python-software-properties && \
	add-apt-repository ppa:webupd8team/java && \
	apt-get update && \
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
	apt-get install -y oracle-java8-installer

