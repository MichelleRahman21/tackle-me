curl "http://localhost:4741/items" \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "item": {
      "id": "'"${ID}"'",
      "name": "'"${NAME}"'",
      "description": "'"${DESC}"'",
      "color": "'"${COLOR}"'",
      "season": "'"${SEA}"'",
      "status": "'"${STATS}"'"
    }
  }'
echo
