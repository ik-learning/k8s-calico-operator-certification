#!/bin/bash

CUSTOMER_POD=$(kubectl get pods -n yaobank -l app=customer -o name)

echo "POD: ${CUSTOMER_POD}"

echo -e "\n"
echo -e "Add 'internet-egress=allowed' to the Service Account:\n"

set -x
kubectl label serviceaccount -n yaobank customer internet-egress=allowed
set +x

echo "Try to access the internet:"
echo -e "\t'ping -c 3 8.8.8.8'\n"
echo -e "\t'curl --connect-timeout 3 -I www.google.com'\n"

kubectl exec -it $CUSTOMER_POD -n yaobank -c customer -- /bin/bash
