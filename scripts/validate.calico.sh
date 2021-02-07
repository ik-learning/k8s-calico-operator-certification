#!/bin/bash

echo "Following the configuration of the installation resource, Calico will begin deploying onto your cluster:"
echo -e "The output from the command when the installation is complete is:\n"

kubectl get tigerastatus/calico

echo -e "\n"
echo -e "We can review the environment now by invoking:\n"

kubectl get pods -A

echo -e "\n"
echo -e "Let's take a look at the Calico pods that have been installed by the operator.\n"

kubectl get pods -n calico-system

echo -e "\n"
echo -e "Finally, we can review the health of our Kubernetes nodes by invoking the kubectl command.\n"
kubectl get nodes -A
