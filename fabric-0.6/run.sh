kubectl create -f fabric-0.6/local/member-pod.yaml -f fabric-0.6/local/member-pod-svc.yaml

kubectl create -f fabric-0.6/local/root-pod.yaml -f fabric-0.6/local/root-service.yaml

kubectl create -f fabric-0.6/local/peer1-pod.yaml

kubectl create -f fabric-0.6/local/peer2-pod.yaml

kubectl create -f fabric-0.6/local/peer3-pod.yaml

kubectl create -f fabric-0.6/local/cli-pod.yaml -f fabric-0.6/local/cli-service.yaml
