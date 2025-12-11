# Add repo and template manifests (CRDs not installed)
helm repo add argocd https://argoproj.github.io/argo-helm
helm repo update
helm template argocd argo/argo-cd --version 7.7.3 --set crds.install=false --namespace argocd > /root/argo-helm.yaml
cat /root/argo-helm.yaml # Confirme versão e ausência de CRDs e namespace.
kubectl apply -f /root/argo-helm.yaml
kubectl get all -n argocd # Garanta que os pods estão em execução no namespace argocd após a aplicação do manifesto. 