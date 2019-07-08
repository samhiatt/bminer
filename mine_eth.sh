#!/bin/sh

# Change the following address to your ETH addr.
ADDRESS=0xBE73a1455694c7F5a2e599f56e3DFCf38251467E

USERNAME=$ADDRESS.w$WORKER_ID
POOL=eth-us-west1.nanopool.org:9999
# Change SCHEME according to your POOL. For example:
# ethash:     Ethermine, Nanopool
# ethproxy:   BTC.com, F2pool, PandaMiner, Sparkpool
# ethstratum: BTC.com, Miningpoolhub
SCHEME=ethash

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880 
