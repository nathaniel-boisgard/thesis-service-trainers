#!/bin/bash

# SET LANGUAGE
LANG=de

# TOKEN FOR AUTHENTIATION
TOKEN=RYMIUNZJFRW3WBD6QIXAZ5WGHMDUUAOY

# GO THROUGH ALL FILES IN DATA FOLDER
FILES=./data/$LANG/luis-training-*.json

echo "TRAINING wit.ai APP (TOKEN: $TOKEN)"

for f in $FILES
do
	printf "\nPROCESSING $f\n"
	
	curl -XPOST 'https://api.wit.ai/samples?v=20170307' \
	  -H "Authorization: Bearer RYMIUNZJFRW3WBD6QIXAZ5WGHMDUUAOY" \
	  -H "Content-Type: application/json" \
	  -d @$f
done	

	   