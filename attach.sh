#!/bin/bash

#docker pull ethereum/client-go:v1.9.24

#sudo docker exec -it mainnet-eth  /bin/sh
#sudo docker attach 76e980019fe8
#cd /root/.ethereum
#./geth_linux --datadir=node attach ipc:./geth.ipc console
./geth_linux_confirm attach http://127.0.0.1:28545


