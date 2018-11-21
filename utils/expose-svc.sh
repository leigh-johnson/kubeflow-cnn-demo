#!/usr/bin/env bash

trap "ps aux | grep -v grep | grep kubectl | awk '{print $2}' | xargs kill -9; exit" SIGINT

kubectl port-forward -n ${NAMESPACE}  `kubectl get pods -n ${NAMESPACE} --selector=service=ambassador -o jsonpath='{.items[0].metadata.name}'` 8080:80 &>/dev/null

echo "@todo print forwarded port table"

while true ; do
  sleep 1024
done
