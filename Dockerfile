FROM alpine/k8s:1.35.1

RUN source ~/.bashrc && kubectl krew update && kubectl krew install oidc-login
