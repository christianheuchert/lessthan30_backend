TOKEN=8ec3238ae7a84af5ffa2825151eec90d68f7f2db
TITLE=Poem-Test4_with_date

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
