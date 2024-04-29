#!/bin/bash

while :; do curl -s -o /dev/null -w '%{http_code}\n' http://app.example.com:18080 ; sleep 1 ; done
