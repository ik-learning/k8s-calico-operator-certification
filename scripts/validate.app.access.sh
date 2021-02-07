#!/bin/bash

echo "Now we can browse to the service using the service’s NodePort. The NodePort exists on every node in the cluster. We’ll use the control node, but you get the exact same behavior connecting to any other node in the cluster."

curl $(multipass list --format yaml | yq e '.node1.[0].ipv4.[0]' -):30180
