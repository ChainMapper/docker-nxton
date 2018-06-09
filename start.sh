#!/bin/bash
echo "Docker Next-On wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
NXTON: NUpMGR21cqJuKMU5LBaY7VUVTDz2Uh8W9A"

config="/config/nxton.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.NXTON/nxton.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.NXTON/wallet.dat
fi

echo "Starting NXTON daemon..."
nxtond
