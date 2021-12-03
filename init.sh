#!/bin/bash

wget  https://github.com/binance-chain/bsc/releases/download/v1.1.6/geth_linux

wget https://github.com/binance-chain/bsc/releases/download/v1.1.6/mainnet.zip
unzip mainnet.zip

./geth_linux --datadir node init genesis.json

#remove [Node.LogConfig] section from config.toml
#手工操作上一行配置

#下载最新节点的snapshot,很大
#nohup wget -q -O - 'https://tf-dex-prod-public-snapshot-site1.s3-accelerate.amazonaws.com/geth-20211202.tar.gz?AWSAccessKeyId=AKIAYINE6SBQPUZDDRRO&Signature=PTyW8FL4SbGrEAW9JDF13dqr%2Bgc%3D&Expires=1641059846' | tar -zxvf - &

#转移到节点目录
#mv server/data-seed/geth/chaindata node/geth/
#mv server/data-seed/geth/triecache node/geth/

