TOKEN=01f6722fca2c6362e44eac70e51c5e5531f5989e
WORD=Word4
ID=1
X=0
Y=0

curl "http://localhost:8000/poems/${ID}/words/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token ${TOKEN}" \
  --data '{
    "word": {
      "word": "'"${WORD}"'",
      "xcoordinate": '${X}',
      "ycoordinate": '${Y}',
    }
  }'

echo