#!/bin/bash

# sh curl-scripts/task/task-create.sh  

TITLE="Cleaning"
DESCRIPTION="washing"
TOKEN="dd22708bab7c41ba963eb0d78f5d95fe"
API="http://localhost:4741"
URL_PATH="/task"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "task": {
      "title": "'"${TITLE}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'

echo
