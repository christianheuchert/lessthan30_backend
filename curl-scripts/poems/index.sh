#!/bin/bash

TOKEN=604448b89ff23b821b78a1bb17503bd13b6d9ba5

curl "http://localhost:8000/poems/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
