FROM ubuntu:17.04

LABEL maintainer="akshmakov@gmail.com"  version="1.0" description="\
build-toolbox base"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update                   &&\
    apt-get install -y                 \
    	    nano    		       \
	    vim			       \
	    curl		       \
	    wget 		       \
	    bash		       \
	    screen		       \
	    build-essential	       \
	    unzip 		       \
	    qemu-user-static 	       \
	    multistrap 		       \
	    zip 		       \
	    wget 		       \
	    dosfstools 		       \
	    kpartx 		       \
	    bc 			       \
	    cmake 		       \
	    device-tree-compiler     &&\
    rm -rf /var/lib/apt/lists/*      &&\
    adduser --disabled-password        \
    	    --gecos ""  builder      &&\
    mkdir -p /workspace		     &&\
    chown builder:builder /workspace 
    
VOLUME /workspace

WORKDIR /workspace

CMD su -c "/bin/bash" builder






	    
	    			 