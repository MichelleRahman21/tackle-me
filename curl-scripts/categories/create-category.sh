curl "http://localhost:4741/categories" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "category": {
      "name": "'"${NAME}"'",
      "description": "'"${DESC}"'"
    }
  }'

echo
