# docker-nxton
Wallet and daemon for Next-On [NXTON] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/nxton` and see the wallet starting.

```
Docker NXTON wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
NXTON: NUpMGR21cqJuKMU5LBaY7VUVTDz2Uh8W9A

Starting NXTON daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/nxton.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

NXTON: NUpMGR21cqJuKMU5LBaY7VUVTDz2Uh8W9A

# License
MIT, see LICENSE file