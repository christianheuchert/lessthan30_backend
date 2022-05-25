TOKEN=c8993fe61a40c6a21820c105af0733aedb3491de
TITLE=Poem-Test3

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
