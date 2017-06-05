#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers"
TOKEN=BAhJIiU5Y2UxNDBkYThhNjQ4MmZiMzIwYmRmNzFjNDliMzI0MgY6BkVG--5081075db516ef8071a0f73caf6398759a849952
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "beer": {
      "name": "ESB",
      "price": "5.25",
      "user_id": "1"
    }
  }'