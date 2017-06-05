#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers/1"
TOKEN=BAhJIiU5Y2UxNDBkYThhNjQ4MmZiMzIwYmRmNzFjNDliMzI0MgY6BkVG--5081075db516ef8071a0f73caf6398759a849952
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "beer": {
      "name": "Finest Kind",
      "price": "7.00"
    }
  }'

echo

# --header "Authorization: Token token=${TOKEN}" \
