#!/bin/bash

bash driving-files/prepare-files.sh

echo "Deploying orderer"
kubectl create -f local/orderer.yaml
sleep 10

echo "Deploying Peer0"
kubectl create -f local/peer0.yaml
sleep 10

echo "Deploying rest of the Peers"
kubectl create -f local/peer1.yaml -f local/peer2.yaml -f local/peer3.yaml

sleep 5

echo "Deploying Cli"
kubectl create -f local/cli.yaml

echo "**********Deployment done successfully**********"
