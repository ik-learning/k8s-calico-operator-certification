#!/bin/bash

# /usr/bin/curl, -o, /usr/local/bin/calicoctl, -L, https://github.com/projectcalico/calicoctl/releases/download/v3.16.1/calicoctl

kubectl create -f https://docs.projectcalico.org/archive/v3.16/manifests/tigera-operator.yaml
