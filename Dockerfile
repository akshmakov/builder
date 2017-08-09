FROM akshmakov/builder:base

RUN apt-get update			&&\
    apt-get install -y			  \
      gcc-aarch64-linux-gnu 	    	  \
      g++-aarch64-linux-gnu 	  	&&\
      rm -rf /var/lib/apt/lists/*



      
	    