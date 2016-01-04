FROM drydock/u14javall:prod

ADD . /u14scaall

RUN /u14scaall/install.sh && rm -rf /u14scaall
