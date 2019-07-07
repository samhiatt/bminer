#!/bin/sh

# Change the following address to your BEAMaddr.
ADDRESS=

USERNAME=$ADDRESS.w
POOL=beam.sparkpool.com:2222
SCHEME=beam+ssl

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
