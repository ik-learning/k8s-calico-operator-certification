# Calico Operator Certification

- [Link](https://academy.tigera.io/course/certified-calico-operator-level-1/)

## Setup

- [Multipass](https://multipass.run/docs/installing-on-macos)
- [Multipass Docs](https://github.com/canonical/multipass)
- [Multipass Mount Volume](https://www.techrepublic.com/article/how-to-share-data-between-host-and-vm-with-multipass/)
- [VirtualBox](https://multipass.run/docs/using-virtualbox-in-multipass-macos)

## Lab

```
We will be creating 4 VMs (3 Kubernetes nodes and 1 standalone host) each with predefined static IP addresses:

Control (198.19.0.1) - Kubernetes control-plane node
Node1 (198.19.0.2) - Kubernetes worker node
Node2 (198.19.0.3) - Kubernetes worker node
Host1 (198.19.15.254) - General purpose host
(Note that each VM will also have a second dynamically allocated IP address, but in the course we will always use the static IP addresses listed above.)
```

### Multipass commands

```
multipass launch -n test1
multipass info --all
multipass shell test1
multipass delete test1
multipass purge
multipass mount assets host1:/home/ubuntu/assets
multipass mount scripts host1:/home/ubuntu/scripts
multipass info host1
multipass unmount host1
```

Hyperkit ot VirtualBox

```
sudo multipass set local.driver=virtualbox
sudo multipass set local.driver=hyperkit
```

<!-- START makefile-doc -->
```
$ make help 
Usage: make [target] [VARIABLE=value]
Targets:
setup                          Setup environment
hooks                          Setup pre commit.
validate                       Validate files with pre-commit hooks
run                            Run project 
```
<!-- END makefile-doc -->
