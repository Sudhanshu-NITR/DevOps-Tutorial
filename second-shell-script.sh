#!/bin/bash

###########################
# Author: Sudhanshu
# Date: 18/03/2026
# This script outputs the node health
# Version: v1
###########################

set -x # debug mode
set -e # exits the script when there is an error
set -o pipefail # exits if pipe commands have any errors

df -h

free -g

nproc
