#!/bin/bash

#  sh curl-scripts/auth_task/task_change-password.sh 

OLDPW="12"
NEWPW="123"
TOKEN="c89952bbe326cad1dee68c4015705fd7"

API="http://localhost:4741"
URL_PATH="/change-password"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
