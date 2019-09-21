curl "http://localhost:4741/categories/${ID}" \
  --include \
  --request DELETE\
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
