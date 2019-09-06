curl "http://localhost:4741/items" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "item": {
      "name": "'"${NAME}"'",
      "description": "'"${DESC}"'",
      "color": "'"${COLOR}"'",
      "season": "'"${SEA}"'",
      "status": "'"${STATS}"'"
    }
  }'

echo
