#!/bin/bash

# sh curl-scripts/task/task-destroy.sh  

ID="626ffb0f9092fa892f777f22"
TOKEN="dd22708bab7c41ba963eb0d78f5d95fe"
API="http://localhost:4741"
URL_PATH="/task"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
