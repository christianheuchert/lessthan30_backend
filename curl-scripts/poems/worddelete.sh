#!/bin/bash
TOKEN=dbeac9894e78810dd2fb9fe6cf2f7975f63a66ad
ID=2
ID2=2


curl "http://localhost:8000/poems/${ID}/words/${ID2}/" \
  --include \
  --request DELETE \
  --header "Authorization: Token ${TOKEN}"

echo
