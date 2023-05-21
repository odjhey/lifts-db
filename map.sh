#!/bin/bash
A=`jq 'map({name: (.name | if type=="string" then . else .en end), muscle: .muscle}) | .[]' "$1"`
B=`jq 'map({name: .name, muscle: .primaryMuscles[0]}) | .[]' "$2"`

ACTUAL=`echo $A $B | jq -s`
echo $ACTUAL