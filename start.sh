#!/usr/bin/env bash

# Run appropriate setup script

NODE_ID=$(geni-get client_id)

if [ $NODE_ID = "rue1" ]; then
    /local/repository/start-ue.sh
elif [ $NODE_ID = "enb1" ]; then
    /local/repository/start-enb1.sh
elif [ $NODE_ID = "enb2" ]; then
    /local/repository/start-enb2.sh
elif [ $NODE_ID = "enbr" ]; then
    /local/repository/start-enbr.sh
elif [ $NODE_ID = "epc" ]; then
    /local/repository/start-epc.sh
else
    echo "no setup necessary"
fi
