#!/bin/bash

echo "Stopping the lab."
multipass delete --all

multipass purge
