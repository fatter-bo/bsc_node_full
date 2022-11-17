#!/bin/bash

#docker pull ethereum/client-go:v1.9.24

#sudo docker exec -it 30c85856a675  /bin/sh
#sudo docker attach 76e980019fe8
#geth --datadir=mainnet attach ipc:mainnet/geth.ipc console
docker rm -f mainnet-eth 

docker run -itd --restart=unless-stopped -v /etc/localtime:/etc/localtime -v /etc/timezone:/etc/timezone --name mainnet-eth -v $(pwd)/mainnet:/root/.ethereum -p 7002:17002 ethereum/client-go --rpcapi eth,net,web3,personal,web3,txpool,admin,miner --miner.etherbase=0x95b194fa00e6ec9a35b1b483f404b6ca89603380 --syncmode=fast --rpc --rpcaddr 0.0.0.0 --cache 8192 --maxpeers 30 --allow-insecure-unlock # --port=17002 # --nat=pmp:49.232.84.215 #--http.port=17001 #--mine --minerthreads=4

