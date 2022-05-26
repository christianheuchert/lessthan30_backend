#!/bin/bash

TOKEN=604448b89ff23b821b78a1bb17503bd13b6d9ba5
NAME=Willy
COLOR=Green
RIPE=True

curl "http://localhost:8000/mangos/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token ${TOKEN}" \
  --data '{
    "mango": {
      "name": "'"${NAME}"'",
      "color": "'"${COLOR}"'",
      "ripe": "'"${RIPE}"'"
    }
  }'

echo
