FROM pamtrak06/ubuntu14.04-apache2-python 

RUN apt-get install -y wget
RUN wget http://fwtools.loskot.net/FWTools-linux-2.0.6.tar.gz
RUN tar -xvf /FWTools-linux-2.0.6.tar.gz
ADD install.sh /FWTools-2.0.6
RUN FWTools-2.0.6; ./install.sh

ENV PATH=$PATH:/FWTools-linux-2.0.6

