#!/bin/sh

# Change the following address to your Zcash taddr.
ADDRESS=

USERNAME=$ADDRESS.w
POOL=zec-eu1.nanopool.org:6666
SCHEME=stratum

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
