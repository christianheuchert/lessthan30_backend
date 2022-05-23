TOKEN=604448b89ff23b821b78a1bb17503bd13b6d9ba5
TITLE=Test3

curl "http://localhost:8000/poems/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token ${TOKEN}" \
  --data '{
    "poem": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
