#https://www.mirantis.com/blog/how-to-deploy-spinnaker-on-kubernetes-a-quick-and-dirty-guide/

kubectl create -f spinacct.yaml
kubectl create namespace spinnaker
kubectl create -f spinsvcs.yaml
kubectl create deployment hal --image gcr.io/spinnaker-marketplace/halyard:1.5.0
kubectl -n kube-system create sa tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
