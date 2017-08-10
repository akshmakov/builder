FROM akshmakov/builder:base

LABEL maintainer="akshmakov@gmail.com" version="1.0" description="\
Debian packaging image"

RUN apt-get update			&&\
    apt-get install -y			  \
    	   packaging-dev		&&\
    rm -rf /var/lib/apt/lists/*		&&\
    mkdir -p /var/opt/pbuilder/repo	&&\
    mkdir -p /var/opt/pbuilder/hooks    

COPY hooks/ /var/opt/pbuilder/hooks/

COPY pbuilderrc /etc/pbuilderrc

CMD bash


