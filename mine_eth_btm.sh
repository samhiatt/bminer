#!/bin/sh

# Change the following address to your ETH addr.
ADDRESS=0xBE73a1455694c7F5a2e599f56e3DFCf38251467E

# Change the following address to your BTM addr.
ADDRESS_2=

USERNAME=$ADDRESS.w
POOL=eth-us-west1.nanopool.org:9999
# Change SCHEME according to your POOL. For example:
# ethash:     Ethermine, Nanopool
# ethproxy:   F2pool, Sparkpool
# ethstratum: Miningpoolhub
SCHEME=ethash

USERNAME_2=$ADDRESS_2.w
POOL_2=btm.f2pool.com:9221
SCHEME_2=tensority

./bminer -uri $SCHEME://$USERNAME@$POOL -uri2 $SCHEME_2://$USERNAME_2@$POOL_2 -api 127.0.0.1:1880
