# Hyperledger Fabric on Kubernetes
---
This repository is composed of manifests which will deploy:

  * orderer-service
  * 2-peers of 2 different organisations
  * ca-service
  * cli-service

### How to deploy?
Note: This guide assumes that you already have running Kubernetes Cluster with a master and n-minions.

###--Steps to Deploy--

Prepare crypto-config.yaml and configtx.yaml in "driving-files" Directory.

Run "generateArtifacts.sh" script in "driving-files" directory to create "orderer.genesis.block"

$ cd driving-files
$ bash generateArtifacts.sh <channel-name>

note: If you don't wish to provide a channel-name, then
by default, genesis block will be created for a channel name "mychannel"
Now, all the artifacts are generated, finally run: $ bash prepare-files.sh

Now, Copy "driving-files" directory to all the nodes, i.e. Master along with all the Minions.

On Master, run "run.sh" $ bash run.sh

Now, Kube-DNS and Nginx Stream Proxy has been setted up.

Setting up the environment variables $ export NGINX_PROXY_DNS=<your master-node ip-address>

Add this setting to Docker running on all nodes


   ExecStart=/usr/bin/dockerd -H fd:// \
   $DOCKER_OPTS $DOCKER_OPT_BIP $DOCKER_OPT_MTU \
   $DOCKER_OPT_DNS
   
Now, time to restart the docker daemon $ systemctl daemon-reload && systemctl restart docker

Deploy the cluster $ bash run deploy.sh---

**PLEASE DO COME UP WITH YOUR PROBLEMS AND IDEAS TO MAKE IT BETTER**

chawlanikhil24 [@] ROCKET-CHAT
https://chat.hyperledger.org/direct/chawlanikhil24
