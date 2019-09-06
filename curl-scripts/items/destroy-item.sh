curl "http://localhost:4741/item/:id" \
  --include \
  --request DELETE\
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "item": {
      "id": "'"${ID}"'",
      "description": "'"${DESC}"'",
      "color": "'"${COLOR}"'",
      "season": "'"${SEA}"'",
      "status": "'"${STATS}"'"
    }
  }'

echo
