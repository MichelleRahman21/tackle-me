#!/bin/bash

curl "http://localhost:4741/examples" \
  --include \
  --request GET \
   --header "Authorization: Token token=${TOKEN}"\
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
