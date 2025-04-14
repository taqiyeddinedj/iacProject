#!/bin/bash

num_requests=$1
if [ -z "$num_requests" ]; then
    echo "Usage: $0 <number of requests>"
    echo "Missed Argument: Choose the number of requests!"
    exit 1
fi

for ((i=1; i<=num_requests; i++)); do
    curl -X POST http://129.151.227.131:32000/item \
    -H "Content-Type: application/json"  \
    -d "{\"id\": \"userid$i\", \"val\": \"val$i\"}"
done
