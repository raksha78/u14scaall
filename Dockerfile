FROM drydock/u14javall:{{%TAG%}}

ADD . /u14scaall

RUN /u14scaall/install.sh 
