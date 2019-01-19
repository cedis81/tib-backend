#!/bin/bash

curl "http://localhost:4741/raids/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "raid": {
      "boss_name": "'"${BOSS}"'",
      "time_remaining": "'"${TIME}"'"
    }
  }'

echo
