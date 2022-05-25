#!/bin/bash

TOKEN=b2b09dcd0e54496b4c3f9906249f17ece2602947

curl "http://localhost:8000/wordlist/" \
  --include \
  --request GET \
  --header "Authorization: Token ${TOKEN}"

echo
