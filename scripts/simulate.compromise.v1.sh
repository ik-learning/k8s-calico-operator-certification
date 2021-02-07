#!/bin/bash

CUSTOMER_POD=$(kubectl get pods -n yaobank -l app=customer -o name)

echo "POD: ${CUSTOMER_POD}"

echo -e "\n"
echo -e "Now we will exec into the customer pod, and run bash, to give us a command prompt within the pod:\n"

echo -e "When in the pod, run 'curl --connect-timeout 5 http://database:2379/v2/keys?recursive=true | python -m json.tool':\n"

kubectl exec -it $CUSTOMER_POD -n yaobank -c customer -- /bin/bash
