#!/bin/bash

TOKEN="Bearer $webhook_secret"

if [ "$verbose" = true ]; then
    echo $TOKEN
fi

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: $TOKEN"\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  $webhook_url \
  -d $data

echo 'JOB Requsted'