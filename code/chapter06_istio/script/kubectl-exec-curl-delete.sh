#!/bin/bash

while :; do kubectl exec curl -n handson -- curl -X DELETE -s -o /dev/null -w '%{http_code}\n' handson:8080/id/123 ; sleep 1 ; done
