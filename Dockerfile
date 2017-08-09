FROM akshmakov/builder:base

LABEL maintainer="akshmakov@gmail.com" version="1.0" description="\
arm-linux-gnueabi x-compile base form amd 64"

RUN apt-get update 	    	      &&\
    apt-get install -y		      \
    	    gcc-arm-linux-gnueabi     \
	    g++-arm-linux-gnueabi

	   