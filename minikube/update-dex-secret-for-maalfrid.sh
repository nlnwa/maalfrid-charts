#!/usr/bin/env sh

kubectl delete secret local-dex \
&& kubectl create secret generic local-dex --from-file=./config.yaml \
&& kubectl scale deployment local-dex --replicas=0 \
&& kubectl scale deployment local-dex --replicas=1
