#!/bin/bash

API="http://localhost:4741"
URL_PATH="/inventory"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "inventory": {
      "name": "'"${NAME}"'",
      "unit_price": "'"${PRICE}"'",
      "quantity": "'"${QUANT}"'"
    }
  }'

echo
