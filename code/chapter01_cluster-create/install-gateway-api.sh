#!/bin/bash

set -eu

GATEWAYAPI_VERSION=v1.0.0

kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/${GATEWAYAPI_VERSION}/config/crd/standard/gateway.networking.k8s.io_gatewayclasses.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/${GATEWAYAPI_VERSION}/config/crd/standard/gateway.networking.k8s.io_gateways.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/${GATEWAYAPI_VERSION}/config/crd/standard/gateway.networking.k8s.io_httproutes.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/${GATEWAYAPI_VERSION}/config/crd/standard/gateway.networking.k8s.io_referencegrants.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/gateway-api/${GATEWAYAPI_VERSION}/config/crd/experimental/gateway.networking.k8s.io_tlsroutes.yaml
