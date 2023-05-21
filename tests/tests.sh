#!/bin/bash

A=`jq 'map({name: .name.en, muscle: .muscle}) | .[]' tests/fixtures/exercises.json`
B=`jq 'map({name: .name, muscle: .primaryMuscles[0]}) | .[]' tests/fixtures/exercisesb.json`

ACTUAL=`echo $A $B | jq -s`

diff tests/expect.json <(echo $ACTUAL | jq)

if [ $? -eq 0 ]; then
  echo "OK"
else
  echo "NG"
fi