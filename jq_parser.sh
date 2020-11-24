#!/bin/bash
COUNT=$(jq '. | length' {JSON_DATA})
for data in $(seq 0 $COUNT)
do
     if [ $(jq -r ".[$data] | .{Comparision Feild}" {JSON_DATA} ) == {} ];
     then
        # Proceed with further steps 
        #$(jq -r ".[$data] | .{Required Output}" {JSON_DATA})
     fi
done
