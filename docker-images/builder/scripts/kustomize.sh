#!/usr/bin/env sh

EXECUTABLE_FULL_PATH="/usr/bin/kustomize"

ARCHIVE="kustomize_v${KUSTOMIZE_VER}_linux_amd64.tar.gz"

curl -s https://api.github.com/repos/kubernetes-sigs/kustomize/releases | grep browser_download | grep "$ARCHIVE" | cut -d '"' -f 4 | sort | tail -n 1 | xargs curl -s -O -L

tar xzf "$ARCHIVE"

rm -f "$ARCHIVE"

mv ./kustomize "${EXECUTABLE_FULL_PATH}"

chmod +x "$EXECUTABLE_FULL_PATH"

kustomize version
