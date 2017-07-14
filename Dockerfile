FROM drydock/u14javall:master

ADD . /u14scaall

RUN /u14scaall/install.sh 
