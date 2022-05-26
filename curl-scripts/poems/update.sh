#!/bin/bash
TOKEN=604448b89ff23b821b78a1bb17503bd13b6d9ba5
ID=3
TITLE=TODelete


curl "http://localhost:8000/poems/${ID}/" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token ${TOKEN}" \
  --data '{
    "poem": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
