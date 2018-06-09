FROM joshendriks/walletbase

ENV WALLET_URL=https://github.com/Next-ON/NextON/releases/download/0.0.1/Linux_X64.tar

RUN apt-get update \
    && apt-get -y install wget libzmq5 libminiupnpc10 \
	&& wget $WALLET_URL -O /tmp/wallet.tar \
	&& cd /usr/local/bin \
	&& tar xvf /tmp/wallet.tar --strip-components 1\
	&& rm /tmp/wallet.tar \
	&& mkdir -p /data/.NXTON
	
COPY nxton.conf /data/.NXTON/nxton.conf
	
#rpc port & main port
EXPOSE 32699 32698

ENV HOME /data

COPY start.sh /start.sh
RUN chmod 777 /start.sh
CMD /start.sh