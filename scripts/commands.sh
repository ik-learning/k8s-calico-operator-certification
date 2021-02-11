#!/bin/bash

kubectl get pods -n yaobank -l app=customer -o wide
kubectl cluster-info dump | grep -m 2 -E "service-cidr|cluster-cidr"

calicoctl get ippool default-ipv4-ippool -o yaml
calicoctl get node node1 -o yaml
calicoctl get ippools

calicoctl node status

# IPv4 BGP status
# +---------------+-------------------+-------+----------+-------------+
# | PEER ADDRESS  |     PEER TYPE     | STATE |  SINCE   |    INFO     |
# +---------------+-------------------+-------+----------+-------------+
# | 198.19.0.3    | node-to-node mesh | up    | 07:26:04 | Established |
# | 198.19.0.1    | node-to-node mesh | up    | 07:26:12 | Established |
# | 198.19.15.254 | global            | up    | 20:40:20 | Established |
# +---------------+-------------------+-------+----------+-------------+

calicoctl ipam show

# +----------+----------------+-----------+------------+-------------+
# | GROUPING |      CIDR      | IPS TOTAL | IPS IN USE |  IPS FREE   |
# +----------+----------------+-----------+------------+-------------+
# | IP Pool  | 198.19.16.0/21 |      2048 | 12 (1%)    | 2036 (99%)  |
# | IP Pool  | 198.19.24.0/21 |      2048 | 1 (0%)     | 2047 (100%) |
# +----------+----------------+-----------+------------+-------------+
