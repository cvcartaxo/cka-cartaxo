# List cert-manager CRDs and save
kubectl get crd | grep cert-manager | tee /root/resources.yaml
#Or
kubectl get crd | grep cert-manager > /root/resources.yaml

# Save spec subject explain output
kubectl explain certificate.spec.subject | tee /root/subject.yaml
#Or
kubectl explain certificate.spec.subject > /root/subject.yaml
