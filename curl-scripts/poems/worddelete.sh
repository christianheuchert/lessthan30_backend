#!/bin/bash
TOKEN=604448b89ff23b821b78a1bb17503bd13b6d9ba5
ID=1
ID2=4


curl "http://localhost:8000/poems/${ID}/words/${ID2}/" \
  --include \
  --request DELETE \
  --header "Authorization: Token ${TOKEN}"

echo
