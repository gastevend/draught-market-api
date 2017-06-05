#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/beers"
TOKEN=BAhJIiVjZWI4ZmQxMGU3MTA5YjNiZjUyNDY2OGFhZTExYWUyYgY6BkVG--900547cd694bf59d58720d741b35e815d6877470
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
