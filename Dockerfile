#This is Debian based
FROM cami/profiling
MAINTAINER David Koslicki, david.koslicki@math.oregonstate.edu

#Install dependencies
RUN apt-get update -y && \
 apt-get install -y python2.7-dev && \
 apt-get install -y python-virtualenv && \
 apt-get install -y python-pip && \
 apt-get install -y gcc && \
 apt-get install -y g++

#Create a virtual environment and activate it
RUN python2.7 -m virtualenv khmerEnv && \
 source /khmerEnv/bin/activate
 
#Install Khmer
RUN pip2 install khmer