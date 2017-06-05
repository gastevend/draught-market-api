#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers"
ID=3
TOKEN=BAhJIiU4NjUyNThiMjM0YWE4OWZiZDNjYTI2NDdkYzQ1M2I2YQY6BkVG--f8df3e4a73185c4869eb47979f26946f20ffd2e2
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
