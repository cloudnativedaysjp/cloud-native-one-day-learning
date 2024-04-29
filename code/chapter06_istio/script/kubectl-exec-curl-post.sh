#!/bin/bash

while :; do kubectl exec curl -n handson -- curl -X POST -s -o /dev/null -d '{}' -w '%{http_code}\n' handson:8080 ; sleep 1 ; done
