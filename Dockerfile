FROM akshmakov/builder:base

LABEL maintainer="akshmakov@gmail.com" version="1.0" description="\
aarch64 cross-compile build image"

RUN apt-get update			&&\
    apt-get install -y			  \
      gcc-aarch64-linux-gnu 	    	  \
      g++-aarch64-linux-gnu 	  	&&\
    rm -rf /var/lib/apt/lists/*

ENV ARCH="arm64" CROSS_COMPILE="aarch64-linux-gnu"

      
	    