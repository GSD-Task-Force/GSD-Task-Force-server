#!/bin/sh

# sh curl-scripts/task/task-index.sh 

TOKEN="dd22708bab7c41ba963eb0d78f5d95fe"
API="http://localhost:4741"
URL_PATH="/task"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
