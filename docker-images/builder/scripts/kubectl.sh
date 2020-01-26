#!/usr/bin/env sh

EXECUTABLE_FULL_PATH="/usr/bin/kubectl"

curl -s -L "https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VER}/bin/linux/amd64/kubectl" -o "$EXECUTABLE_FULL_PATH"
chmod +x "$EXECUTABLE_FULL_PATH"

mkdir -p ~/.kube

kubectl version --client
