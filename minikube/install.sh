#!/usr/bin/env sh

NAMESPACE=default
RELEASE=local-m6d
CHART=../repo/maalfrid

set -e
set -x

kubectl config use-context minikube

helm lint --strict ${CHART}

helm init --client-only --wait

helm dep up ${CHART}

helm upgrade ${RELEASE} ${CHART} --install --namespace ${NAMESPACE} --values values.yaml \
--set maalfrid-service.hostAliases[0].ip=$(minikube ip) \
--set maalfrid-service.hostAliases[0].hostnames[0]=veidemann.local \
$@
