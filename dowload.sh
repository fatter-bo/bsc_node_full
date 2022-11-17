#!/usr/bin/env sh


#nohup wget "https://matic-blockchain-snapshots.s3-accelerate.amazonaws.com/matic-mainnet/bor-pruned-snapshot-2022-02-13.tar.gz" &



#下载直接解压
nohup wget -q -O - "https://download.bsc-snapshot.workers.dev/geth-20220828.tar.lz4" | tar  -I lz4 -xvf - &

#多线程下载
#aria2c -o geth.tar.lz4 -x 4 -s 12 "URL TO ASIA ENDPOINT" "URL TO EU ENDPOINT" "URL TO US ENDPOINT"
