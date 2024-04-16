#!/bin/bash

while :; do kubectl exec curl -- curl -s -X GET -o /dev/null -w '%{http_code}\n' handson:8080;sleep 1;done
