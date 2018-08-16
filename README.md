# docker-nxton
Wallet and daemon for Next-On [NXTON] cryptocurrency on docker

# Quickstart
Type `docker run -it -e "USER=me" -e "PASSWORD=secret" -e "RPCALLOW=127.0.0.1" chainmapper/cmdcoin` and see the wallet starting.

Alternatively type `docker run -it -v "<path_to_config>:/config/cmd.conf" chainmapper/cmdcoin` to use your own config.

```
Docker NXTON wallet

By: ChainMapper
Website: https://chainmapper.com

Starting NXTON daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/nxton.conf` and `/config/wallet.data`

# License
MIT, see LICENSE file