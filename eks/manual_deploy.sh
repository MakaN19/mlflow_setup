#!/usr/bin/env bash

CLUSTER_NAME=$1
set -eu

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export KUBECONFIG="${HOME}/.kube/${CLUSTER_NAME?}"

HELM_RELEASE_NAME=custom-deploy-mlflow
HELM_CHART_NAME=community-charts/mlflow
HELM_CHART_VERSION="~0.7.19"
NAMESPACE=mlflow-deployment

echo "Deploying ${HELM_RELEASE_NAME} to ${KUBE_CONTEXT_CLUSTER_NAME}..."
helm repo add community-charts https://community-charts.github.io/helm-charts
helm repo update
helm upgrade ${HELM_RELEASE_NAME} ${HELM_CHART_NAME} --version "${HELM_CHART_VERSION}" --install --namespace="${NAMESPACE?}" --values="${SCRIPT_DIR}/helm/values.yaml"
