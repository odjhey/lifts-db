#!/bin/bash

ACTUAL=`./map.sh`

diff tests/expect.json <(echo $ACTUAL | jq)

if [ $? -eq 0 ]; then
  echo "OK"
else
  echo "NG"
fi