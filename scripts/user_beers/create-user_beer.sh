#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/user_beers"
TOKEN=BAhJIiVhMTA3ODJkNTJkODg2MmFkOGY3MjA4MmIxYjNmNGM4NwY6BkVG--4b9af37194ffa3554072ddd107a31418eb2e45e4
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user_beer": {
      "beer_id": "2",
      "user_id": "1"
    }
  }'
