#!/bin/sh

echo "Wait for an incoming request on port 5555"
while true; do
    if nc -l -p 5555 -q 1; then
        echo "Request received on port 5555."
        echo "Executing ephemeral container."
        docker run --rm 29f62e9a14a1
        break
    fi
done
