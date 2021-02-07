#!/bin/bash

echo "Starting the lab."
multipass start control
multipass start node1
multipass start node2
multipass start host1
