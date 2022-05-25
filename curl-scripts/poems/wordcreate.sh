TOKEN=c8993fe61a40c6a21820c105af0733aedb3491de
WORD=Word3
ID=1
X=2
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
      "ycoordinate": '${Y}'
    }
  }'

echo