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

  ```git clone github.com/chawlanikhil24/hyperledger-fabric-k8s.git```

  2. Enter in **fabric-1.0**. ```cd fabric-1.0```

  3. Now, Simply run ```bash run.sh```

### If everything went well, then Kubernetes Cluster will run successfully.

---
For example, I am using minikube on my bare-metal machine, so Kubelet is running on minikube.

Steps to deploy on minikube:

```
minikube ssh
cd /home
git clone github.com/chawlanikhil24/hyperledger-fabric-k8s.git
sudo bash run.sh
```
---
**PLEASE DO COME UP WITH YOUR PROBLEMS AND IDEAS TO MAKE IT BETTER**

chawlanikhil24 [@] ROCKET-CHAT
https://chat.hyperledger.org/direct/chawlanikhil24
