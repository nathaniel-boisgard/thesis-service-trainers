#!/bin/bash

FILES=./data/luis-training-*.json
LUIS_SUBKEY=8b7919e312de49e68b26b57d4f2299cc
LUIS_APPID=704b5b84-34d0-4a27-b06d-9e6061646747
LUIS_APPVERSION=0.1

for f in $FILES
do
	printf "\nPROCESSING $f\n"
	curl -s -o /dev/null -w "%{http_code}" -H "Content-Type: application/json" -H "Ocp-Apim-Subscription-Key:$LUIS_SUBKEY" -XPOST https://westus.api.cognitive.microsoft.com/luis/api/v2.0/apps/$LUIS_APPID/versions/$LUIS_APPVERSION/examples -d @$f
done

curl -H "Ocp-Apim-Subscription-Key:$LUIS_SUBKEY" --data '' https://westus.api.cognitive.microsoft.com/luis/api/v2.0/apps/$LUIS_APPID/versions/$LUIS_APPVERSION/train

