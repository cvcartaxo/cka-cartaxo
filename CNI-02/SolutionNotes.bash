
#Verify installation and NetworkPolicy support

curl -sL https://raw.githubusercontent.com/projectcalico/calico/v3.28.2/manifests/tigera-operator.yaml | grep -i "NetworkPolicy"
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.28.2/manifests/tigera-operator.yaml

Obs: "Nesta questão pode usar o comando apply ou create"

kubectl get all -n tigera-operator # Garanta a execução dos pods no namespace tigera-operator.
