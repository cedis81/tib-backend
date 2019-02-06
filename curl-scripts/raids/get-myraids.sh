#!/bin/bash

curl "http://localhost:4741/my-raids" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
