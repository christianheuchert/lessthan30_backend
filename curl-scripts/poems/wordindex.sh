#!/bin/bash

TOKEN=01f6722fca2c6362e44eac70e51c5e5531f5989e
ID=1

curl "http://localhost:8000/poems/${ID}/words/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
