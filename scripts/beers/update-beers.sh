#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers/3"
TOKEN=BAhJIiU4NjUyNThiMjM0YWE4OWZiZDNjYTI2NDdkYzQ1M2I2YQY6BkVG--f8df3e4a73185c4869eb47979f26946f20ffd2e2
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "beer": {
      "name": "Really Old Brown Dog",
      "price": "6.00"
    }
  }'

echo

# --header "Authorization: Token token=${TOKEN}" \
