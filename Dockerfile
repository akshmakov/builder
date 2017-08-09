FROM akshmakov/builder:base

LABEL maintainer="akshmakov@gmail.com" version="1.0" description="\
arm-linux-gnueabihf x-compile base for amd 64"

RUN apt-get update 	    	      &&\
    apt-get install -y		      	\
    	    gcc-arm-linux-gnueabihf	\
	    g++-arm-linux-gnueabihf
