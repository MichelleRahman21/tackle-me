curl "http://localhost:4741/categories" \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "category": {
      "id": "'"${ID}"'",
      "name": "'"${NAME}"'",
      "description": "'"${DESC}"'"
    }
  }'
echo
