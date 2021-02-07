#!/bin/bash

CUSTOMER_POD=$(kubectl get pods -n yaobank -l app=customer -o name)

echo "POD: ${CUSTOMER_POD}"

echo -e "\n"
echo -e "Now we will exec into the customer pod, and run bash, to give us a command prompt within the pod:\n"

echo "Try to access the internet:"
echo -e "\t'ping -c 3 8.8.8.8'\n"
echo -e "\t'curl --connect-timeout 3 -I www.google.com'\n"

kubectl exec -it $CUSTOMER_POD -n yaobank -c customer -- /bin/bash
