ARG BASE_IMAGE_VERSION=1.35.1
FROM alpine/k8s:${BASE_IMAGE_VERSION}

RUN source ~/.bashrc && kubectl krew update && kubectl krew install oidc-login

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]