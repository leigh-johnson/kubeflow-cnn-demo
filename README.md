
# Introduction

# Getting Started

```
source .env
mkdir ${KUBEFLOW_SRC}
cd ${KUBEFLOW_SRC}

curl https://raw.githubusercontent.com/kubeflow/kubeflow/${KUBEFLOW_TAG}/scripts/download.sh | bash
```

```
${KUBEFLOW_SRC}/scripts/kfctl.sh init ${APP_NAME} --platform none
cd ${APP_NAME}
${KUBEFLOW_SRC}/scripts/kfctl.sh generate k8s
${KUBEFLOW_SRC}/scripts/kfctl.sh apply k8s
```