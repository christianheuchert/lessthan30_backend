#!/bin/bash

TOKEN=9eb8f787831f65a3d9b2e148f4d724c6666bedc4
ID=1

curl "http://localhost:8000/poems/${ID}/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
