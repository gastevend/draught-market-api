#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers"
TOKEN=BAhJIiU3ZDk2MTEzYmM5NmM3OWJhOTM2Y2FjYjM1NzQwNDMyMQY6BkVG--e01bf79ed9dc390c47be6bef4590a1cdf240d275
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "beer": {
      "name": "Bud Light",
      "price": "3.00",
      "user_id": "1"
    }
  }'
