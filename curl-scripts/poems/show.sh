#!/bin/bash

TOKEN=604448b89ff23b821b78a1bb17503bd13b6d9ba5
ID=2

curl "http://localhost:8000/poems/${ID}/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
