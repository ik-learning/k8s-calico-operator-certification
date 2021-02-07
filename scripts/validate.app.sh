#!/bin/bash

echo "To validate that the application has been deployed into your cluster, we will check the rollout status of each of the microservices."
echo -e "Check the customer microservice::\n"

kubectl rollout status -n yaobank deployment/customer

echo -e "\n"
echo -e "Check the summary microservice:\n"

kubectl rollout status -n yaobank deployment/summary

echo -e "\n"
echo -e "Check the database microservice:\n"

kubectl rollout status -n yaobank deployment/database

echo -e "\n"
echo -e "Finally, we can review the health of our Kubernetes nodes by invoking the kubectl command.\n"
kubectl get nodes -A
