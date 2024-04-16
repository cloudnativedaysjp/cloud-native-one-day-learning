#!/bin/bash

kubectl exec -n handson curl-allow -- /bin/sh -c "echo -n 'curl-allow -> /     : ';curl -s -o /dev/null handson:8080 -w '%{http_code}\n'"
kubectl exec -n handson curl-allow -- /bin/sh -c "echo -n 'curl-allow -> /color: ';curl -s -o /dev/null handson:8080/color -w '%{http_code}\n'"
kubectl exec -n handson curl-deny  -- /bin/sh -c "echo -n 'curl-deny  -> /     : ';curl -s -o /dev/null handson:8080 -w '%{http_code}\n'"
kubectl exec -n handson curl-deny  -- /bin/sh -c "echo -n 'curl-deny  -> /color: ';curl -s -o /dev/null handson:8080/color -w '%{http_code}\n'"