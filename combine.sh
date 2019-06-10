#!/bin/bash

kubectl create configmap test-config $(cat .env-dev | sed -e 's/^/--from-literal=/' | tr "\n" ' ') --dry-run -o yaml | kubectl apply -f -


