#!/bin/bash

# Install helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh

# Install Kube Prometheus Stack
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack

# Deploy Using Manifests
kubectl apply -f Ops/NodeJsApp/
kubectl apply -f Ops/Redis/
kubectl apply -f Monitoring/
