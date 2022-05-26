#!/bin/bash

TOKEN=01f6722fca2c6362e44eac70e51c5e5531f5989e

curl "http://localhost:8000/poems/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
