#!/bin/bash

echo -e "First, verify there no existing Host Endpoints:\n"
calicoctl get heps

echo -e "\nTry to access the internet:"
calicoctl patch kubecontrollersconfiguration default --patch='{"spec": {"controllers": {"node": {"hostEndpoint": {"autoCreate": "Enabled"}}}}}'

echo -e "WIthin a few moments you should see Host Endpoints for each of the Kubernetes nodes:\n"
sleep 10
calicoctl get heps

echo -e "\nTry to run command from the standalone host:"
echo -e "\t'nc -w 3 198.19.0.1 21'"
