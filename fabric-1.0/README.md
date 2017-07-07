# Hyperledger Fabric on Kubernetes
---
This repository is composed of manifests which will deploy:

  * orderer-service
  * 2-peers of 2 different organisations
  * ca-service
  * cli-service

### How to deploy?
Actually, very simple. Since, fabric 1.0 requires some certs and pems and other stuff to run, so, lets call these **driving-files** . So, we need to setup driving-files first.


For now you need to setup the driving files mannually running a script on your node where **Kubelet** is running.

  1. Clone this repository on your **Node** where **Kubelet** is running.

     ```$ git clone github.com/chawlanikhil24/hyperledger-fabric-k8s.git```

  2. Enter in **fabric-1.0**. ```$ cd fabric-1.0```

  3. We need to generate Artifacts required to run the project, so, use

     ```$ bash driving-files/generateArtifacts.sh <CHANNEL_NAME>```

  *If <CHANNEL_NAME> not specified then default CHANNEL_NAME is "mychannel"

  4. Now, next step is to place files at correct places for mouting in containers,RUN:

     ```$ bash driving-files/prepare-files.sh```

  5. Download the required images for the Cluster Deployment.

     ```$ bash download_imgs.sh```

  #### We are all set on the worker node, **on which "Kubelet" is running**

  6. Now, on the Kubernetes Master Node,  run:

     ```$ bash deploy.sh```

  ---
  ### Deployment has been completed by the time we reach here.

  To check the Deployment status of all the deployments, run:

  ```$ kubectl get deployment```

  ---
  ### To test the cluster

  ```$ bash run driving-files/scripts/test_4peers.sh```

---
### If everything went well, then Kubernetes Cluster will run successfully.

---

**PLEASE DO COME UP WITH YOUR PROBLEMS AND IDEAS TO MAKE IT BETTER**

chawlanikhil24 [@] ROCKET-CHAT
https://chat.hyperledger.org/direct/chawlanikhil24
