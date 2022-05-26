#!/bin/bash
TOKEN=d6ae867b0ba59b28793cc98715b390ea1102af2d
ID=1
ID2=1


curl "http://localhost:8000/poems/${ID}/words/${ID2}/" \
  --include \
  --request DELETE \
  --header "Authorization: Token ${TOKEN}"

echo
