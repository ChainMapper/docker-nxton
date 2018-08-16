FROM chainmapper/walletbase-xenial
	
ENV WALLET_URL=https://github.com/Next-ON/NextON/releases/download/0.0.1/Linux_X64.tar

RUN apt-get update \
    && apt-get -y install wget libzmq5 libminiupnpc10 \
	&& wget $WALLET_URL -O /tmp/wallet.tar \
	&& cd /usr/local/bin \
	&& tar xvf /tmp/wallet.tar --strip-components 1\
	&& rm /tmp/wallet.tar

#rpc port & main port
EXPOSE 32699 32698

RUN mkdir /data
ENV HOME /data

COPY start.sh /start.sh
COPY gen_config.sh /gen_config.sh
RUN chmod +x /*.sh
CMD /start.sh nxton NXTON nxtond