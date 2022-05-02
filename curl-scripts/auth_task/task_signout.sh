#!/bin/bash

#  sh curl-scripts/auth_task/task_signout.sh 

TOKEN="c89952bbe326cad1dee68c4015705fd7"
API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
