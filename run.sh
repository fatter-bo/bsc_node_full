#!/bin/bash

#docker pull ethereum/client-go:v1.9.24

#sudo docker exec -it 30c85856a675  /bin/sh
#sudo docker attach 76e980019fe8
#geth --datadir=mainnet attach ipc:mainnet/geth.ipc console
#docker rm -f mainnet-eth 

#nohup ./geth --rpc.allow-unprotected-txs --datadir "./mainnet" --http.api eth,net,web3,txpool,admin,miner  --syncmode fast --miner.etherbase=0xf6c0570D6edDF4A73ef61d707a5caCD1e0be564D --port 30303 --http --http.addr 0.0.0.0 --http.port 18545 --ws --ws.addr 0.0.0.0 --ws.port 18546 --cache 4096 --maxpeers 100 & # --miner.threads=1 & # --mine --allow-insecure-unlock
#nohup ./geth --verbosity=3 --rpc.allow-unprotected-txs --datadir "./mainnet" --http.api eth,net,web3,txpool  --syncmode=fast --miner.etherbase=0xf6c0570D6edDF4A73ef61d707a5caCD1e0be564D --port 30303 --http --http.addr 0.0.0.0 --http.port 18535 --ws --ws.addr 0.0.0.0 --ws.port 18536 --cache 2048 --maxpeers 100 & # --miner.threads=1 & # --mine --allow-insecure-unlock


## start a full node 6G内存
nohup ./geth_linux_mempool \
        --diffsync \
        --verbosity=3 \
        --syncmode=snap \
        --config ./config.toml \
        --datadir ${PWD}/node \
        --cache 16384 \
         --port 30363 \
         --nat extip:54.172.214.21 \
        --http.api eth,net,web3,txpool,admin,miner \
         --rpc.allow-unprotected-txs \
        --txlookuplimit 0 \
        --txpool.journal '' \
        --txpool.pricebump 1 \
        --txpool.accountslots 4 \
        --txpool.globalslots 32 \
        --txpool.accountqueue 64 \
        --txpool.globalqueue 1024 \
        --txpool.lifetime '00h00m10s' \
        --maxpeers 1200 \
        --miner.delayleftover '200ms' \
        --http --http.addr 0.0.0.0 --http.port 28565 \
        --ws --ws.addr 0.0.0.0 --ws.port 28566 &

