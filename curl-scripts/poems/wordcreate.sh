TOKEN=604448b89ff23b821b78a1bb17503bd13b6d9ba5
WORD=Word3
ID=1

curl "http://localhost:8000/poems/${ID}/words/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token ${TOKEN}" \
  --data '{
    "word": {
      "word": "'"${WORD}"'"
    }
  }'

echo