#!/bin/sh

# Change the following address to your Zhash addr.
ADDRESS=GXRqRvbrc2ALe69gf88T5Y9ULTLBbYf3Ky

USERNAME=$ADDRESS.w$WORKER_ID
#POOL=US.pool.gold:3050
POOL=us-btg.2miners.com:4040
SCHEME=zhash

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
