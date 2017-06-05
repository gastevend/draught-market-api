#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers"
TOKEN=BAhJIiU4NjUyNThiMjM0YWE4OWZiZDNjYTI2NDdkYzQ1M2I2YQY6BkVG--f8df3e4a73185c4869eb47979f26946f20ffd2e2
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "beer": {
      "name": "Sam Summer",
      "price": "5.25",
      "user_id": "3"
    }
  }'
