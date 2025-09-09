#!/usr/bin/env bash

sparql_endpoint=http://localhost:4000/sparql
query_string=$(cat ./queries/combined-service-2-3-4-5.rq)

curl -o ./query.json -H "Content-Type: application/sparql-query" --data "$query_string" "$sparql_endpoint"
