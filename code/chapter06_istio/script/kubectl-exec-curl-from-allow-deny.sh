#!/bin/bash

while :; do
  kubectl exec curl-allow -n handson -- /bin/sh -c "echo -n 'curl-allow: ' ; curl -s -o /dev/null -w '%{http_code}\n' handson:8080"
  kubectl exec curl-deny -n handson -- /bin/sh -c "echo -n 'curl-deny:  ' ; curl -s -o /dev/null -w '%{http_code}\n' handson:8080"
  echo ---------------- ; sleep 1
done
