#!/bin/bash

curl "http://localhost:4741/raids" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "raid": {
      "boss_name": "'"${BOSS}"'",
      "time_remaining": "'"${TIME}"'",
      "user_id": "'"${USER}"'"
    }
  }'

echo
